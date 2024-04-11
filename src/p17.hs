-- Problem 17
-- (*) Split a list into two parts; the length of the first part is given.


split :: [a] -> Int -> ([a], [a])
split xs y = (take y xs, drop y xs)


split' :: [a] -> Int -> ([a], [a])
split' xs y = splitAt y xs
