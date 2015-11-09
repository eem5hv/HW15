module boolTest

import bool
import pair
import boolOld

b1: bool
b1 = true

b2: bool
b2 = true

b3: bool
b3 = false

b4: bool
b4 = not true

b5: bool
b5 = not b1

b6: bool
b6 = not (not b5)

b7: bool
b7 = andp (mkPair true true)

b8: bool
b8 = andp (mkPair false true)

b9: bool
b9 = orp (mkPair false false)

b1O: bool
b1O = orp (mkPair true false)

b11: bool
b11 = nandp (mkPair true true)

b12: bool
b12 = nandp (mkPair false true)

b13: bool
b13 = xorp (mkPair true false)

b14: bool
b14 = xorp (mkPair false true)

b15: bool
b15 = xorp (mkPair false false)

pand_t_t: bool
pand_t_t = pand true true
--expect true

pand_f_f: bool
pand_f_f = pand false false
--expect false

pand_t_f: bool
pand_t_f = pand true false
--expect false

pand_f_t: bool
pand_f_t = pand false true
--expect false

por_t_t: bool
por_t_t = por true true
--expect true

por_t_f: bool
por_t_f = por true false
--expect true

por_f_t: bool
por_f_t = por false true
--expect true

por_f_f: bool
por_f_f = por false false
--expect false

pxor_t_t: bool
pxor_t_t = pxor true true
--expect false

pxor_t_f: bool
pxor_t_f = pxor true false
--expect true

pxor_f_t: bool
pxor_f_t = pxor false true
--expect true

pxor_f_f: bool
pxor_f_f = pxor false false
--expect false

pnand_t_t: bool
pnand_t_t = pnand true true
--expect false

pnand_t_f: bool
pnand_t_f = pnand true false
--expect true

pnand_f_t: bool
pnand_f_t = pnand false true
--expect true

pnand_f_f: bool
pnand_f_f = pnand false false
--expect true



--below are extended tests for homework due october 7

and_t_t: bool
and_t_t = and true true
--expect true

and_t_f: bool
and_t_f = and true false
--expect false

and_f_t: bool
and_f_t = and false true
--expect false

and_f_f: bool
and_f_f = and false false
--expect false

or_t_t: bool
or_t_t = or true true
--expect true

or_t_f: bool
or_t_f = or true false
--expect true

or_f_t: bool
or_f_t = or false true
--expect true

or_f_f: bool
or_f_f = or false false
--expect false

nand_t_t: bool
nand_t_t = nand true true
--expect false

nand_t_f: bool
nand_t_f = nand true false
--expect true

nand_f_t: bool
nand_f_t = nand false true
--expect true

nand_f_f: bool
nand_f_f = nand false false
--expect true

xor_t_t: bool
xor_t_t = xor true true
--expect false

xor_t_f: bool
xor_t_f = xor true false
--expect true

xor_f_t: bool
xor_f_t = xor false true
--expect true

xor_f_f: bool
xor_f_f = xor false false
--expect false
