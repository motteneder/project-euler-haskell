import System.Random
import Data.List



genTriple :: IO [Int]
genTriple = do                 
  r1 <- randomRIO (0,1000)
  let a = r1
  r2 <- randomRIO (0,1000 - a)
  let b = r2
  let c = 1000 - (a + b)

  return [a, b, c]

isPythagorean :: [Int] -> Bool
isPythagorean (x:xs) 
    |a < b && b < c = (a*a) + (b*b) == (c*c)
    | otherwise = False
    where
      a = x
      b = head xs
      c = last xs

findPythagoreanTriple :: IO [Int]
findPythagoreanTriple = do
  triple <- genTriple
  if isPythagorean triple then return triple else  findPythagoreanTriple
      