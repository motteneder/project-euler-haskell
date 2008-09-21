max3 , min3, middle :: Int -> Int -> Int -> Int

max3  a b c = max (max a b) c

min3  a b c = min (min a b) c

middle a b c = max (min a b) (min b c)

sort3 :: Int -> Int -> Int -> (Int,Int,Int)

sort3 a b c = ((max3 a b c), (middle a b c), (min3 a b c))

data Triangle = Failure | Isosceles | Equilateral | Scalene
                deriving(Show)

analyse :: (Int,Int,Int) -> Triangle
analyse (a,b,c)
    | a >= b + c = Failure
    | b == c = Equilateral
    | (a == b) && (b == a) = Isosceles
    | otherwise = Scalene

safe_analyse :: Int -> Int -> Int -> Triangle
safe_analyse a b c  = analyse (sort3 a b c)