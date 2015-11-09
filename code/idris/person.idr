module Person

||| A record type that is equivalent to:
||| (data Person = mkPerson String nat)
||| but where we give names to fields.
||| A person has a name and an age in
||| years.
record Person where
    constructor MkPerson
    name : String
    age : Nat

-- An example value of type Person
p: Person
p = MkPerson "Tommy" 3

-- And now here's the key idea: The 
-- names of the fields are automatically
-- names of projection functions! Here
-- we get out the age of person, p.
t: Nat
t = age p
-- expect 3

-- Here we get the name of person p.
n: String
n = name p
-- expect "Tommy"

a: Person
a = mkPerson "Jenny" 22

x: String
x = name a
--expect Jenny

y: Nat
y = age a
--exepct 22 "Maddie" 19

b: Person
b = mkPerson

p: String
p = name y

q: Nat
q = age y

--field override functions ("setters")

setName': Person' -> String -> Person'
setName' (mkPerson' n a h g) n' = mkPerson' n' a h g

setAge': Person' -> Nat -> Person'
setAge' (mkPerson n a h g) a' = mkPerson' n a' h g

setHeight': Person' -> Nat -> Person'
setHeight' (mkPerson n a h g) h' = mkPerson' n a h' g

setGender': Person' -> String -> Person'
setGender' (mkPerson n a h g) g' = mkPerson' n a h g'


