module Problem4(answer) where
  palindrome x = (reverse $  show x) == (show x)


  answer digits =maximum $  filter palindrome [x*y | x <- [(1*10^(digits-1))..(10*10^(digits-1))],y <-[x..(10*10^(digits-1))], x*y `mod` 11 ==0]
