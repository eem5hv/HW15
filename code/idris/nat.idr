module nat

import bool
import pair
import eq
import serialize

||| A data type to represent the natural numbers.  We use a lower case
||| "n" in the name to distinguish our nat type from Idris's Nat type
data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

||| given a pair of natural numbers, return its sum
add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

|||given a pair of natural numbers, (a, b), return a-b. if a <= b, the answer will be O
sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

mult: nat -> nat -> nat
mult O m = O
mult (S n) m = add m (mult n m)

fact: nat -> nat 
fact O = (S O)
fact (S n) = mult (S n) (fact n)

|||5: ex - given a pair of natural numbers, (x, n), return the value of x raised to the nth power
ex: nat -> nat -> nat
ex x O = S O
ex x (S n) = mult x (ex x n)

|||Fibonacci sequence- Fn = Fn-1 + Fn-2. Inputting the place in the sequence, not the number preceding the result in the sequence.
fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

|||le given a pair of natural numbers, (a, b), return true if a is less than or equal to b, otherwise return false
le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

||| eq given a pair of natural numbers, (a, b), return true if a is equal to be, otherwise return false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat a b = isZero (sub a b)

|||gt given a pair of natural numbers, (a, b), return true if a is greater than b, otherwise return false
gt: nat -> nat -> bool
gt a O = true
gt a b = not (le (S a) (S b))

|||ge given a pair of natural numbers, (a, b), return true if a is greater than or equal to b
ge: nat -> nat -> bool
ge O (S b) = false
ge (S a) (S b) = ge a b

|||lt given a pair of natural numbers, (a, b), return true if a is less than b
lt: nat -> nat -> bool
lt O (S b) = true
lt (S a) (S b) = not (ge a b)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ (toString n)
