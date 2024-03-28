-- Problem 08
-- (**) Eliminate consecutive duplicates of list elements.

compress :: (Eq a) => [a] -> [a]
compress [] = []
compress (x:xs) = x:compress (dropWhile ( == x ) xs)

