module Box

import eq
import serialize

data Box t = mkBox t

--function, return the value in a given box

unbox: Box t -> t
unbox (mkBox b) = b

--typeclass  instances / overloaded operators

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2
--type of v1 is of type a...

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ", )"
