selfPowersSum :: Integer -> Integer
selfPowersSum 1 = 1
selfPowersSum n = n ^ n + selfPowersSum (n-1)

main = do
    print $ reverse (take 10 (reverse $ show (selfPowersSum 1000)))
