module list
--a polymorphic list abstract data type
import nat
import option
import bool
import ite
import eq
import serialize



--the data type
infixr 7 ::

data list a = nil | (::) a (list a)

li: list bool
li = true :: false :: true :: true :: nil

--the functions
|||return the length of any given list
length: list a -> nat
length nil = O
length (n::l) = S (length l)

|||take a pair of lists and return the list made by appending the list
append: list a -> list a -> list a
append nil l = l
append (h::l) l2 = (h::(append l l2))

|||append as an infix operator ++
(++): list a -> list a -> list a
(++) nil l2 = l2
(++) (h::t) l2 = h::(t++l2)

map: (a -> b) -> list a -> list b
map f nil = nil
map f (h::t) = (f h)::(map f t)
---takes a list of nat and returns a different type of lists, of type
  ---bool or whatever the function is you're using (like evenb)

|||give a list and a predicate on elements, return the sublist of elements for which the predicate is true
|||ite = if then else
|||if f applied to h returns true, evaluate the next, then apply the next which applies to that.
|||filter is a completely general purpose funcation that takes any condition and returns bool (T/F) and applies to a list and filters that list to give you a list of those which satisfy that bool. Ex: return even functions...start with long list of natural numbers, filter out those that are odd, and get a list of natural numbers that are only even.
---takes a list of things and gives a sublist consisting only of those
  ---that satisfy the predicate
filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h)
                      (h::(filter f t))
                          (filter f t)
---if f applied to h is true, then what do i return?
---if using evenb, and h is even...the first option (h::(filter f t))
  ---will remain. if h is odd...the second option (filter f t) will
    ---remain because h is filtered out.

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

foldl: list a' -> b' -> (a' -> b' -> b') -> b'
foldl nil acc _ = acc
foldl (h::t) acc f = foldl t (f h acc) f

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                      true
                      (member v t)
---we need different implementations of eql for different types of
  ---values...and we don't have mechanisms to do this yet.

head: list a -> option a
head nil = none
head (h::t) = some h

tail: list a -> option (list a)
tail nil = none
tail (h::t) = some t

instance (eq a) => eq (list a) where
  eql nil nil = true
  eql (h::t) nil = false
  eql nil (h::t) = false
  eql (h1::t1) (h2::t2) =
    and (eql h1 h2) (eql t1 t2)

--implementing toString to list
toStringList: (Serialize a) => list a -> String
toStringList nil = ""
toStringList (h::nil) = (toString h)
toStringList (h::t) = (toString h) ++ ", " ++ (toStringList t)
--you are applying toString to h instead of toStringList becuase you
  --are applying toString only to a value (h) and not a list (like t)

instance (Serialize a) => Serialize (list a) where
  toString l = "[" ++  (toStringList l) ++ "]"


subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = true
subset_elements (h::t) l2 = and
                          (member h l2)
                          (subset_elements t l2)
--is head in l2? if no, answer is false. if yes, check next line...
--continues this recursively.

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 =
                    and
                      (subset_elements l1 l2)
                      (subset_elements l2 l1)

