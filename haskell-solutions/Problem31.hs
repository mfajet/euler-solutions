makeChange :: Int -> Int -> Int
makeChange _ 1 = 1
makeChange 0 _ = 1
makeChange n coin
    | n - coin >=0 = makeChange (n - coin) coin + makeChange (n) (nextCoin coin)
    | otherwise =  makeChange (n) (nextCoin coin)

nextCoin :: Int -> Int
nextCoin coin
    | coin == 200 = 100
    | coin == 100 = 50
    | coin == 50 = 20
    | coin == 20 = 10
    | coin == 10 = 5
    | coin == 5 = 2
    | coin == 2 = 1
    | otherwise = 0

main = do
    print $ makeChange 200 200



    -- | coin == 25 = 10
    -- | coin == 10 = 5
    -- | coin == 5 = 1
    -- | otherwise = 0
