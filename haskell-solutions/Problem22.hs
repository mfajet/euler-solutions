module Problem22(namesScores) where
  import System.IO
  import Text.Regex
  import Data.Char
  import Data.List

  namesScores str = names str where
    names fileName = do
      contents <- readFile fileName
      return $ sum $ zipWith (*)  [1..] (map (q) $ sort $ splitRegex (mkRegex ",") (subRegex (mkRegex "\"") contents ""))
        where q y = sum $ map p y
              p x = ord x -64
