-- Problem 14
-- (*) Duplicate the elements of a list.


dupli :: [a] -> [a]
dupli [] = []
dupli (x:xs) = singleDup x ++ dupli xs
    where singleDup x = [x,x]

dupli' :: [a] -> [a]
dupli' [] = []
dupli' (x:xs) = x:x:dupli' xs

