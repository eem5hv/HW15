module relationDog

import list
import listDog
import pair
import relation
import bool

data Breed = GoldenRetriever | Poodle | PitBull | Lab | Spaniel

mapColor: list String
mapColor = map color dogs

mapBreed: list String
mapBreed = map breed dogs

onlyCute: list Dog
onlyCute = filter cute dogs

aveAge: pair Nat Nat
aveAge = mkPair (query2 dogs cute age plus 0) (query2 dogs cute countOne plus 0)

totalWeightcute: Nat
totalWeightcute = query plus 0 weight cute dogs

breeds: String
breeds = query (++) "" breed cute dogs


