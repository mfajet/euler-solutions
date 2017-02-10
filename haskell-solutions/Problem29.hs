module Problem29(distinctPowers) where
  import Data.List

  distinctPowers :: Integer -> Int
  distinctPowers u = length$ sort $ nub $ concat $ zipWith (q) (replicate ((fromIntegral u )-1 )[2..u] ) [2..] where
    q x y = map (^y) x
