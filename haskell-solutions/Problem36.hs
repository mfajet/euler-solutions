module Problem36(doubleBasePalindrome,sumDBP) where
  import Numeric

  sumDBP :: [Integer] -> Integer
  sumDBP x = sum $ filter doubleBasePalindrome x

  doubleBasePalindrome :: Integer -> Bool
  doubleBasePalindrome x = and $ [(palindrome x), (palindromeBin $ decToBin x)]

  palindromeBin :: (Show a)=>[a] -> Bool
  palindromeBin x = (show $  reverse x) == (show x)


  palindrome :: (Show a) => a -> Bool
  palindrome x = (reverse $  show x) == (show x)

  decToBin :: (Integral a) => a ->[a]
  decToBin x = reverse $ decToBin' x where
    decToBin' 0 = []
    decToBin' y = let (a,b) = quotRem y 2 in [b] ++ decToBin' a
