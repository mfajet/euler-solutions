module Problem5(numsDivByInterval, moreEfficient) where
  import Problem3
  import Data.List

  moreEfficient x y = product $ concat $  map (nub) $ transpose $  map primeFactorization [x..y]


  numsDivByInterval :: Int -> Int -> Int
  numsDivByInterval y z = head  (filter f [1..])
    where f q = divByInterval q y z

  divByInterval :: Int -> Int -> Int -> Bool
  divByInterval x y z = and $ map p [y..z] where
    p q = x `mod` q == 0
