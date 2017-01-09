spiralDiagonals :: Int -> Int
spiralDiagonals 1 =1
spiralDiagonals n = thisNum n 0 + spiralDiagonals (n-2) where
    thisNum _ 4 = 0
    thisNum n x = n^2 - x*(n-1) + thisNum n (x+1)

main = do
    print (spiralDiagonals 1001)
