module natTest

import bool
import nat
import pair
import natOld
import boolOld

b1: nat
b1 = multp (mkPair O (S O))

b2: nat
b2 = multp (mkPair (S (S O)) (S O))

b3: nat
b3 = factp O

b4: nat
b4 = factp (S (S (S O)))

b5: nat
b5 = exp (mkPair (S (S O)) O)

b6: nat
b6 = exp (mkPair (S (S O)) (S (S (S O))))

b7: bool
b7 = lep (mkPair O (S O))

b8: bool
b8 = lep (mkPair (S (S O)) O)

b9: bool
b9 = lep (mkPair (S (S (S O))) (S (S O)))

b1O: bool
b1O = eqp (mkPair O O)

b11: bool
b11 = eqp (mkPair (S (S O)) (S O))

b12: bool
b12 = eqp (mkPair (S (S O)) (S (S O)))

b13: bool
b13 = gtp (mkPair (S O) O)

b14: bool
b14 = gtp (mkPair (S O) (S (S O)))

b15: bool
b15 = gep (mkPair O (S (S O)))

b16: bool
b16 = gep (mkPair (S (S O)) (S (S (S O))))

b17: bool
b17 = ltp (mkPair O (S (S O)))

b18: bool
b18 = ltp (mkPair (S (S (S O))) (S (S (S (S O)))))

b19: bool
b19 = ltp (mkPair (S (S O)) (S O))


--below this is the extension of the test cases for homework due
  --october 7

add0: nat
add0 = add O (S O)
--expect 1

add1: nat
add1 = add (S O) (S (S O))
--expect 3

sub0: nat
sub0 = sub O (S O)
--expect O

sub1: nat
sub1 = sub (S O) O
--expect 1

mult0: nat
mult0 = mult O (S O)
--expect O

mult23: nat
mult23 = mult (S (S O)) (S (S (S O)))
--expect 6

fact4: nat
fact4 = fact (S (S (S (S O))))
--expect 24

ex0: nat
ex0 = ex (S (S O)) O
--expect 1

ex23: nat
ex23 = ex (S (S O)) (S (S (S O)))
--expect 8

fib0: nat
fib0 = fib O
--expect O

fib1: nat
fib1 = fib (S O)
--expect (S O)

fib2: nat
fib2 = fib (S (S O))

le0: bool
le0 = le O (S O)
--expect true

le1: bool
le1 = le (S O) O
--expect false

le2: bool
le2 = le (S (S O)) (S O)
--expect false

eq0: bool
eq0 = eq O O
--expect true

eqab: bool
eqab = eq (S (S O)) (S O)
--expect false

gt0: bool
gt0 = gt (S (S O)) O
--expect true

gt1: bool
gt1 = gt (S (S O)) (S O)
--expect true

ge0: bool
ge0 = ge O (S (S O))
--expect false

ge2: bool
ge2 = ge (S O) (S O)
--expect ge O O

lt0: bool
lt0 = lt O (S (S O))
--expect true

lt2: bool
lt2 = lt (S (S O)) (S O)
--expect not (ge (S O) O)
