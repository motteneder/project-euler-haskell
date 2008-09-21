solveN :: Int -> Int
solveN n = if (isDivideable n [1..20]) then
               n
           else
               solveN (n + 1)

isDivideable :: Int -> [Int] -> Bool
isDivideable n (x:xs) = if n `mod` x == 0 then
                          isDivideable n xs
                      else
                          False
isDivideable n [] = True


solve = solveN 1

main = do
  putStrLn (show solve)