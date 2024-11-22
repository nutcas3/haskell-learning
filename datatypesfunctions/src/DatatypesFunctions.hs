module DatatypesFunctions where

import           Prelude hiding (elem, filter, length, lookup, not, reverse,
                          (++), (||))

not :: Bool -> Bool
not True = False
not False = True

(||) :: Bool -> Bool -> Bool
(||) True  _ = True
(||) False y = y

(|||) :: Bool -> Bool -> Bool
(|||) True  True  = True
(|||) True  False = True
(|||) False True  = True
(|||) False False = False

loop :: a
loop = loop


ifthenelse :: Bool -> a -> a -> a
ifthenelse c t e
    | c         = t
    | otherwise = e
