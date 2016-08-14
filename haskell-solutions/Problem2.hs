module Problem2(evenFibSum, fib) where

    fib :: [Int]-> [Int]
    fib (x:y:ys)
      | (x+y) <=4000000 = fib $ [x+y,x,y] ++ ys
      | otherwise = [x,y] ++ ys
--Just pass in [0,1] to find answer
    evenFibSum :: [Int] -> Int
    evenFibSum x = sum $ filter even $ fib x
