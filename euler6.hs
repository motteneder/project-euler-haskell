square x = x*x
solve = let sumSquare = square (sum [1..100])
            squareSum = sum(map (square) [1..100])
        in 
          sumSquare - squareSum