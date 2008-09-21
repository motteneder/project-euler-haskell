import System.Random

max3 , min3, middle :: Int -> Int -> Int -> Int

max3  a b c = max (max a b) c

min3  a b c = min (min a b) c

middle a b c = max (min a b) (min b c)

sort3 :: Int -> Int -> Int -> (Int,Int,Int)

sort3 a b c = ((min3 a b c), (middle a b c), (max3 a b c))


genTriple :: IO (Int, Int, Int)
genTriple = do                 
  r1 <- randomRIO (0,1000)
  let a = r1
  r2 <- randomRIO (0,1000 - a)
  let b = r2
  let c = 1000 - (a + b)

  return (a, b, c)

isPythagorean :: (Int, Int, Int) -> Bool
isPythagorean (a, b, c) 
    |a < b && b < c = (a*a) + (b*b) == (c*c)
    | otherwise = False

findPythagoreanTriple :: IO (Int, Int, Int)
findPythagoreanTriple = do
  triple <- genTriple
  if isPythagorean triple then return triple else  findPythagoreanTriple
      