module nat

import bool
import pair

data nat = O | S nat

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S t

-- four
g: nat
g = S (S t)

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

x: bool
x = isZero r

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

y: nat
y = succ O

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| return true if the argument is odd otherwise false
oddb: nat -> bool
oddb n = not (evenb n)

|||given a pair of natural numbers, return its sum
addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

|||given a pair of natural numbers, return its difference
subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair n O) = n
subp (mkPair (S n) (S m)) = subp (mkPair n m)
 
|||given a pair of natural numbers, return its product
---(one more than n) times m is one more than n, m times.
multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S n) m) = addp (mkPair m (multp (mkPair n m)))

|||given a natural number, return it's factorial
factp: nat -> nat
factp O = S O
factp (S n) = multp (mkPair (S n) (factp (n)))

|||given a pair of natural numbers (x, n), return the value of x raised to the nth power
exp: pair nat nat -> nat
exp (mkPair x O) = (S O)
exp (mkPair x (S n)) = multp (mkPair x (exp (mkPair x n)))

|||given a pair of natural numbers (a, b), return true if a is less than or equal to be, otherwise return false
lep: pair nat nat -> bool
lep (mkPair O b) = true
lep (mkPair (S a) O) = false
lep (mkPair (S a) (S b)) = lep (mkPair a b)

|||given a pair of natural numbers (a,b), return true if a = b, if not, return false
eqp: pair nat nat -> bool
eqp (mkPair O O) = true
eqp (mkPair a b) = isZero (subp (mkPair a b))

|||given a pair of natural numbers (a, b), return true if a > b, if not, return false
gtp: pair nat nat -> bool
gtp (mkPair a O) = true
gtp (mkPair a b) = not (lep (mkPair (S a) (S b)))

|||given a pair of natural numbers, (a, b), return true if a is greater than or equal to b, if not, return false
gep: pair nat nat -> bool
gep (mkPair O (S b)) = false
gep (mkPair (S a) (S b)) = gep (mkPair a b)

|||given a pair of natural numbers, (a, b), return true if a < b
ltp: pair nat nat -> bool
ltp (mkPair O (S b)) = true
ltp (mkPair a b) = not (gep (mkPair (S a) (S b)))

