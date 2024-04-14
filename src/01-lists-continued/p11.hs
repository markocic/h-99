-- Problem 11
-- (*) Modified run-length encoding.

import P09
data Encoded a = Single a | Multiple Int a
    deriving Show


encodeModified :: (Eq a) => [a] -> [Encoded a]

-- this is meant to piss off my friend :)
-- hi arsen
encodeModified xs = [
        if length x /= 1
        then
            Multiple (length x) (head x)
        else
            Single (head x)
    | x <- pack xs 
    ]

