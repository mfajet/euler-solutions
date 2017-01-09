makeChange :: Int -> [Int] -> Int
makeChange _ [_] = 1
makeChange 0 _ = 1
makeChange n (x:y:coins)
    | n - x >=0 = makeChange (n - x) (x:y:coins) + makeChange (n) (y:coins)
    | otherwise =  makeChange (n) (y:coins)

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
    print $ makeChange 200 [200,100,50,20,10,5,2,1]



    -- | coin == 25 = 10
    -- | coin == 10 = 5
    -- | coin == 5 = 1
    -- | otherwise = 0
