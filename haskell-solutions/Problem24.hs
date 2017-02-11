import Data.List

insertThroughout :: a -> [a] -> [[a]]
insertThroughout x [] = [[x]]
insertThroughout x (y:ys) = (x:y:ys) : map (\zs -> y:zs) (insertThroughout x ys)

permute ::[a] -> [[a]]
permute [] =[[]]
permute (x:xs) = concatMap (insertThroughout x) (permute xs)


main = do
    print $ head $ drop 999999 $ sort (permute  [0..9])
