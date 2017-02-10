module Problem9(findTriple) where
  findTriple :: Integer -> Integer
  findTriple s = product$ head$ [[a,b,c] | a <- [1..s], b <- [1..s], let c =ceiling $ sqrt$ fromIntegral (a^2 + b^2), a<b,a^2+b^2==c^2,  a + b + c==s]
