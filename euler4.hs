isPalindrome :: Int -> Bool
isPalindrome n = reverse (show n) == (show n)

prop_RevRev xs = reverse (reverse xs) == xs
  where types = xs::[Int]
