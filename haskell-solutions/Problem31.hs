makeChange :: Int -> [Int] -> Int
makeChange _ [_] = 1
makeChange 0 _ = 1
makeChange n (x:y:coins)
    | n - x >=0 = makeChange (n - x) (x:y:coins) + makeChange (n) (y:coins)
    | otherwise =  makeChange (n) (y:coins)

main = do
    print $ makeChange 200 [200,100,50,20,10,5,2,1]
