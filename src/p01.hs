-- Problem 01
-- (*) Find the last element of a list.

myLast :: [a] -> Maybe a
myLast [] = Nothing
myLast [x] = Just x
myLast (_:xs) = myLast xs
