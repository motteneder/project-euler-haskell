import Data.Char
fac 1 = 1
fac n = n * fac (n-1)
solve = sum(map(digitToInt) (show (fac 100)))