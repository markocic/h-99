-- Problem 04
-- (*) Find the number of elements in a list.

myLength :: [a] -> Int
myLength [] = 0
myLength (x:xs) = 1 + myLength xs

-- trivial solution
myLength' :: [a] -> Int
myLength' = length
