isPalindrome n = (show n) == (reverse (show n))
numbers = [x*y | x <- [100..999], y <- [100..999]]

main = do
  putStrLn (show (maximum(filter (isPalindrome) numbers)))