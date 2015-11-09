module Person

import bool
--a person has an age in years, a height in inches, and a gender, true
  --= female, false = male. we use the name Person' here, with a
  --prime, to leave room for the improved version.

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

setName: Person -> String -> Person
setName p n = record { name = n } p

setAge: Person -> Nat -> Person
setAge p a = record { age = a } p

setHeight: Person -> Nat -> Person
setHeight p h = record { height = h } p

setGender: Person -> bool -> Person
setGender p g = record { gender = g } p
