import List

isDivideable :: Int -> Int -> Bool
isDivideable a b = a `mod` b == 0

tri = scanl (+) 1 [2..]

count e = length . filter (==e)
getDivisors :: Int -> [Int]
getDivisors num  = (concat (map (getDivisorsByN num) [1..10]))
getDivisorsByN num 1 = [1,num]
getDivisorsByN num n  = if num `isDivideable` n then 
                            takeWhile (isDivideable num) [n^x | x <- [1..],n^x < num]
                        else
                            []

isSolved n = length(getDivisors n) > 22
solve  = foldl max 0  (map (length . getDivisors) (take 65000 tri))
main = do
  putStrLn (show solve)
           