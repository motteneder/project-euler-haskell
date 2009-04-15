import qualified Data.Map as Map  
import Maybe
numbers = Map.fromList
	[(1,"one"),
	(2,"two"),
	(3,"three"),
	(4,"four"),
	(5,"five"),
	(6,"six"),
	(7,"seven"),
	(8,"eight"),
	(9,"nine"),
	(10,"ten"),
	(11,"eleven"),
	(12,"twelve"),
	(13,"thirteen"),
	(14,"fourteen"),
	(15,"fifteen"),
	(16,"sixteen"),
	(17,"seventeen"),
	(18,"eighteen"),
	(19,"nineteen"),
	(20,"twenty"),
	(30,"thirty"),
	(40,"forty"),
	(50,"fifty"),
	(60,"sixty"),
	(70,"seventy"),
	(80,"eighty"),
	(90,"ninety")]
	
getNum :: Int -> String
getNum n = fromJust $ Map.lookup n numbers

pronounce :: Int -> String
pronounce num
    | num == 1000 = "one thousand"
	| (num <= 20) && (num >= 1) = fromJust $ Map.lookup num numbers
	
	| num >= 100 = let  n' = (num - n) `div` 100
	                    n = num `mod` 100
					in  case n of 0 -> getNum n' ++ " hundred"
					              otherwise -> getNum n' ++ " hundred and " ++ pronounce n
					
	| otherwise =   let n' = num - n
                	    n = num `mod` 10
					in case n of 0 -> getNum n'
					             otherwise -> getNum n' ++ "-" ++ getNum n
isLetter :: Char -> Bool
isLetter c =  c /= ' ' && c /= '-'
			             
main = do
    putStrLn . show . length . filter isLetter $ concat $ map pronounce [1..1000]
					