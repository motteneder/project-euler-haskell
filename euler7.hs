import Data.List
s = 120000
numberPool :: [Int]
numberPool = filter even [1,3..s]

sieveHelper n x = x `mod` n == 0 && not (n == x)
sieve (x:xs)  
          | x  <  truncate ((sqrt . fromIntegral) s)  = x : sieve (filter (not . sieveHelper x) (xs))
          | otherwise = x:xs


main = do
  putStrLn (show ( last (take 10001 (sieve numberPool))))
