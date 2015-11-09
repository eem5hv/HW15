module DNA

import pair

data base = A | G | C | T

|||function that takes a base and returns a base that is its complement
complement_base: base -> base
complement A = T
complement T = A
complement G = C
complement C = G

|||function that takes a list of bases and returns the complementary strand
complement_strad: list dna.complement_base
complement_strand = (map (dna.complement_base) (list base))

|||function that takes a list (pair base base) representing DNA molecule and return a value of type list base that represents the first strand of the given DNA molecule
strand 1:
strand 2:

|||takes list base representing a strand of DNA and returns a list (pair base base) representing a DNA molecule from the first strand of the given DNA so strand 1 = given strand and strand 2 = complement
complete: 

|||takes list base (representing a strand of DNA) and a particular base and returns the # of occurrances of that base in the given strand (as a natural number). must use map and foldr. hint: convert list of bases into lists of zeros and ones depending on if it matches the bases (filter?), and foldr to reduce it to a list by summing up all the 0s and 1s.
countBase:

