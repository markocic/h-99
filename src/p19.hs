-- Problem 19
-- (**) Rotate a list N places to the left.


rotate :: [a] -> Int -> [a]
rotate xs a
    | a >= 0 = drop a xs ++ take a xs
    | otherwise = rotate xs (length xs + a)

