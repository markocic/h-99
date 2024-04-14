-- Problem 02
-- (*) Find the last-but-one (or second-last) element of a list.

myButLast :: [a] -> Maybe a
myButLast x | length x < 2 = Nothing
myButLast [x, y] = Just x
myButLast (_:xs) = myButLast xs
