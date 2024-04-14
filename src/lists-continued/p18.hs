-- Problem 18
-- (**) Extract a slice from a list.

slice :: [a] -> Int -> Int -> [a]
slice xs a b
    | a > length xs || b > length xs || a < 0 || a > b || a == b = []
    | otherwise = [ x | (i, x) <- zip [1..] xs, a <= i, i <= b ]

-- greetings for my friend arsen :)

