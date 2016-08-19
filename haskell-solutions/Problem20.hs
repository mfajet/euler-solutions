module Problem20(sumOfFactorial) where
  import Data.Char (digitToInt)

  sumOfFactorial x =  sum $ map digitToInt $ show $ product [1..x]
