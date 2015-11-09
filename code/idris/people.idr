module People

import Person
import list
import bool

--a few persons

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person
daryl = mkPerson "Daryl" 19 71 false

-- a list of Persons

people: list Person
people = tom::mary::ge::daryl::nil

mapAge: list Person -> list Nat
mapAge nil = nil
mapAge (h::t) = (age h)::(mapAge t)

-- some functions that modify people

women: list Person
women = filter gender people

wAges: list Nat
wAges = map age women
--map takes function element -> element and takes a list of elements of
  --the first kind and turns it into a list of elements of the second kind.

 
