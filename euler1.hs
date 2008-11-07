helper n = (n `mod` 3 == 0 ) || ( n `mod` 5 == 0)
solve = sum (filter (helper) [1..999])