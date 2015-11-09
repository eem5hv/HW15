module listTest

import list
import bool
import ite
import nat

lO: list Nat
lO = nil

l1: list Nat
l1 = 1 :: nil

l2: list Nat
l2 = 1 :: 2 :: nil

l3: list Nat
l3 = 1 :: 2 :: 3 :: nil

li: list bool
li = true :: false :: true :: true :: nil

A1: list Nat
A1 = append lO l1
--expect cons 1 nil

A2: list Nat
A2 = append lO l2
--expect (cons 1 (cons 2 nil))

A3: list Nat
A3 = append lO l3
--expect (cons 1 (cons 2 (cons 3 nil)))

A4: list Nat
A4 = append l1 l1
--expect cons 1 (cons 1 nil)

A5: list Nat
A5 = append l1 l2
--expect cons 1 (cons 1 (cons 2 nil))

A6: list Nat
A6 = append l1 l3
--expect cons 1 (cons 1 (cons 2 (cons 3 nil)))

A7: list Nat
A7 = append l2 l1
--expect cons 1 (cons 2 (cons 1 nil))

A8: list Nat
A8 = append l2 l2
--expect cons 1 (cons 2 (cons 1 (cons 2 nil)))

A9: list Nat
A9 = append l2 l3
--expect cons 1 (cons 2 (cons 1 (cons 2 (cons 3 nil)))

A10: list Nat
A10 = append l3 l1
--expect cons 1 (cons 2 (cons 3 (cons 1 nil)))

A11: list Nat
A11 = append l3 l2
--expect cons 1 (cons 2 (cons 3 (cons 1 (cons 2 nil))))

A12: list Nat
A12 = append l3 l3
--expect cons 1 (cons 2 (cons 3 (cons 1 (cons 2 (cons 3 nil)))))


labtest1: list bool
labtest1 = map evenb (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)

labtest2: list nat
labtest2 = filter evenb (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)
