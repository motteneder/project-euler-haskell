import Data.List

sieveHelper n x = x `mod` n == 0 && not (n == x)
sieve (x:xs) n
          | x  <  truncate ((sqrt . fromIntegral) n)  = x : sieve (filter (not . sieveHelper x) (xs)) n
sieve _ n = []
helper n p = n > p && n `mod`p == 0
primeFactors n = filter (helper n) (takeWhile (<n) (sieve (filter (odd)[2..n]) n))

main = do
  putStrLn (show (primeFactors 600851475143))