latticeSquare n = product [1..(n*2)] `div` (product [1..n])^2

main = do
    print $ latticeSquare 20
