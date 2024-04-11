-- Problem 15
-- (**) Replicate the elements of a list a given number of times.


repli :: [a] -> Int -> [a]
repli [] _ = []
repli _ 0 = []
repli (x:xs) y = replicate y x ++ repli xs y

