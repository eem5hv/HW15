module dna

import list
import bool
import ite
import pair

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base
complement_strand = map dna.complement_base (A::T::C::G::nil)

strand1: list base -> list base -> list base
strand1 (a::b::nil) (c::d::nil) = (a::c::nil)

strand2: list base -> list base -> list base
strand2 (a::b::nil) (c::d::nil) = (b::d::nil)

complete: list base -> list (pair base base)
complete nil = nil
complete (h::t) = (mkPair h (complement_base h))::(complete t)

basenat: base -> base -> Nat
basenat A A = 1
basenat T T = 1
basenat C C = 1
basenat G G = 1
basenat _ _ = 0

countBase: list base -> base -> Nat
countBase l b = list.foldr plus 0 (map (basenat b) l)
