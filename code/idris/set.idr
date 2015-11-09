module set

import list
import ite
import bool
import eq
import serialize

||| mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

set_insert: (eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))

{--subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = true
subset_elements (h1::t1) l2 = ite (member h1 l2)
                              (subset_elements t1 l2) (false)--}

subset_elements: (eq a) => list a -> list a -> bool
subset_elements nil l2 = true
subset_elements (h::t) l2 = and
                            (member h l2)
                            (subset_elements t l2)

{-- same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = ite (subset_elements l1 l2)
 (subset_elements l2 l1) (false) --}
  
same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 =
                 and
                   (subset_elements l1 l2)
                   (subset_elements l2 l1)
 
eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = same_elements l1 l2

instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2
