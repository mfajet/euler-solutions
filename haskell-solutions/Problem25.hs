fib :: Int -> Integer
fib x = fibs !! x
    where fibs = 0 : 1 : zipWith (+) fibs (drop 1 fibs)

main = do
    print $ head $ filter (lengthGTE) (fibs)
    where lengthGTE (k,n) = length (show n) >=1000
          addLast (i,x) (j,y) = (j+1, x+y)
          fibs = (0,0) : (1,1) : zipWith (addLast) fibs (drop 1 fibs)
