module Problem16(sumOfDigitsofPower) where
  import Data.Char (digitToInt)

  sumOfDigitsofPower :: Integer -> Int
  sumOfDigitsofPower x = sum $ map digitToInt $ show (2^x)
