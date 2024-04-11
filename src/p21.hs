-- Problem 21
-- Insert an element at a given position into a list.

insertAt :: a -> [a] -> Int -> [a]
insertAt c xs n = take (n - 1) xs ++ c:drop (n - 1) xs
