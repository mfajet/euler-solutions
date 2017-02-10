factors :: Int -> [Int]
factors n = filter (divBy) [1..n]
  where divBy y = n `mod` y == 0 && n /=y

amicableNumber :: Int -> Bool
amicableNumber x =
    let y = sum $ factors x
        z = sum $ factors y
    in x==z && x/=y

main = do
    print $ sum $ filter amicableNumber [1..10000]
