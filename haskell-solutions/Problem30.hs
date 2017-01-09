import Data.Char
sumOfFifth :: Int -> Bool
sumOfFifth x = sum (map ((^5) . digitToInt)  (show x)) ==x

main = do
    print $ sum $ filter sumOfFifth [2..200000]
