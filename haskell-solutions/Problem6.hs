module Problem6(answer,sumOfSquares,squareOfSum, answerAsWhole) where
  answerAsWhole x = round $ answer x

  answer x = (squareOfSum x) - (sumOfSquares x)
-- sum of squares of 1 - n is given by n*(n+1)*(2*n+1) / 6
  sumOfSquares n = n*(n+1)*(2*n+1) / 6
-- sum of digits 1-n is given by n*(n+1)/2
  squareOfSum n = (n*(n+1)/2)^2
