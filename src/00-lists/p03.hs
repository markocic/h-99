-- Problem 03
-- (*) Find the K'th element of a list.

elementAt :: [a] -> Int -> Maybe a
elementAt [] _ = Nothing
elementAt (x:xs) 1 = Just x
elementAt (_:xs) k = elementAt xs (k - 1)

-- trivial solution
elementAt' :: [a] -> Int -> Maybe a
elementAt' x k
    | length x <= k = Nothing
    | otherwise = Just (x !! (k - 1))
