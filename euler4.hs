isPalindrome :: Int -> Bool
isPalindrome n = reverse (show n) == (show n)

prop_isPalindrome n = reverse (show n) == show n
  where types = n::Int

solve = let nums = [x * y| x <-[100..999] , y <- [100..999]]
        in 
          show(last(takeWhile (isPalindrome) nums))
