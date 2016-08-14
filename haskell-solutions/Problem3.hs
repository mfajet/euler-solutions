module Problem3(primeFactorization) where
  -- Problem asks the user to find the largest prime factor of the given number.
  -- This Module returns a list of prime factors in descending order. Head will be greatest prime factor.

  primeFactorization :: Int -> [Int]
  primeFactorization x = primeFactorsList x []

  primeFactorsList :: Int -> [Int] -> [Int]
  primeFactorsList 1 y = y
  primeFactorsList x y = primeFactorsList (x `quot` first) (first : y)
      where first = firstFactor x


  firstFactor :: Int -> Int
  firstFactor x = head (filter divBy [2,3..])
    where divBy y = x `mod` y == 0
