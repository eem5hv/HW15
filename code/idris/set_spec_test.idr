module set_spec_test

import set_spec
import list
import eq
import bool
import pair
import serialize
import option
import nat

list1: list nat
list1 = (S O)::(S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O))))))::nil

list2: list nat
list2 = (S (S O))::(S (S (S O)))::(S (S (S (S O))))::(S (S (S (S (S (S O))))))::nil

set1: set_spec.set nat
set1 = mkSet (list1)

set2: set_spec.set nat
set2 = mkSet (list2)

set3: set_spec.set nat
set3 = mkSet nil

sr: set nat
sr = set_remove (S (S O)) set1

sc: nat
sc = set_cardinality set1

sm: bool
sm = set_member (S (S (S (S O)))) set1

su: set nat
su = set_union set1 set2

si: set nat
si = set_intersection set1 set2

sd: set nat
sd = set_difference set1 set2

sf: bool
sf = set_forall evenb set1

se: bool
se = set_exists evenb set2

sw1: option nat
sw1 = set_witness evenb set3

sw2: option nat
sw2 = set_witness evenb set1

sp: set (pair nat nat)
sp = set_product set1 set2
