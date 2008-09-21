isDivideable :: Int -> Int -> Bool
isDivideable a b = a `mod` b == 0

getDivisors :: Int -> [Int]
getDivisors n =   filter (isDivideable n) [1..n-1]

isDeficient, isAbundant :: Int -> Bool

isDeficient n = sum (getDivisors n) < n
isAbundant n = sum (getDivisors n) > n