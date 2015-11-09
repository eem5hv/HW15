module unit

import bool
import eq
import serialize

data unit = mkUnit

--function
id_unit: unit -> unit
id_unit mkUnit = mkUnit

--overloaded operators
instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
