-- Problem 05
-- (*) Reverse a list.

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++[x]

-- trivial solution
myReverse' :: [a] -> [a]
myReverse' = reverse

