module Dog

import list
import bool

record Dog where
    constructor MkDog
    breed : String
    age : Nat
    color: String
    weight: Nat
    cute: bool

gold: Dog
gold = MkDog "GoldenRetriever" 3 "Golden" 75 true
b: String
b = breed gold
a: Nat
a = age gold
c: String
c = color gold


pood: Dog
pood = MkDog "Poodle" 2 "White" 55 false
b1: String
b1 = breed pood
a1: Nat
a1 = age pood
c1: String
c1 = color pood

pb: Dog
pb = MkDog "PitBull" 7 "Grey" 44 false
b2: String
b2 = breed pb
a2: Nat
a2 = age pb
c2: String
c2 = color pb

lab: Dog
lab = MkDog "Lab" 1 "Yellow" 82 true
b3: String
b3 = breed lab
a3: Nat
a3 = age lab
c3: String
c3 = color lab

span: Dog
span = MkDog "Spaniel" 13 "Auburn" 38 true
w4: Nat
w4 = weight span


dogs: list Dog
dogs = gold::pood::pb::lab::span::nil
