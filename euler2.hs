fibs' n n' = n + n' : fibs' n' (n + n')
fibs = fibs' 1 1 
solve = sum (filter (even) (takeWhile (<4000000) fibs))