-- Problem 12
-- (**) Decode a run-length encoded list.

data Encoded a = Single a | Multiple Int a
    deriving Show

decodeModified :: [Encoded a] -> [a]
decodeModified [Multiple x y] = replicate x y
decodeModified [Single x] = [x]
decodeModified (x:xs) = decodeModified [x] ++ decodeModified xs

