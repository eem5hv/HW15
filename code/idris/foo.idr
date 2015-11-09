module foo

import list
import nat

fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

fancymult: list nat -> nat
fancymult nil = (S O)
fancymult (h::t) = mult h (fancymult t)

--binary operator
--identity element
--type of list element
--so, let's write a version that abstracts from those three variables

fancy: (a -> a -> a) -> a -> (list a) -> a
fancy f id nil = id
fancy f id (h::t) = f (h) (fancy f id t)

--fancy takes three parameters (f unifies with function, id unifies
  --with identity element...and when the rest of the list is nil, you
  --want to return the identity element)
--example: fancy (++) "" ("Hello"::"World"::"!"::nil) should return..."HelloWorld!"

--monoid: set with an identity element and a number?
