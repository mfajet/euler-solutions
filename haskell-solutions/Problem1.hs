module Problem1(sumUnion3and5) where
  import Data.List

  sumUnion3and5 :: Int -> Int
  sumUnion3and5 x = let mult3 =  takeWhile(<x) $ map (3*) [1..]
                        mult5 =  takeWhile(<x) $ map (5*) [1..]
                    in sum $ mult5 `union` mult3
