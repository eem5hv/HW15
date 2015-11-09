module ite

import bool
import nat

ite: bool -> a -> a -> a
ite true tb fb = tb
ite false tb fb = fb
--application of if then else function requires the bool coniditon and
  --two expressions of some common type.
  --if bool is true, return one thing. if false, return the other
