import Data.Char

champernowne :: [Int]
champernowne = map digitToInt $ concat $  map (show) [1..]

main = do
    print (champernowne!!0 * champernowne!!9 * champernowne!!99 * champernowne!!999 *champernowne!!9999 * champernowne!!99999 *champernowne!!999999)
