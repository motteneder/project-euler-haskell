cross  xs n = map (*n) xs
isPalindrome n = (show n) == (reverse (show n))
numbers = map (cross [100..999]) [100..999]

main = do
  putStrLn (show (maximum(filter (isPalindrome) numbers)))