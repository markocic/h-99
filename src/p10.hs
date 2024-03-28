-- Problem 10
-- (*) Run-length encoding of a list.

import P09

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs = [ (length x, head x) | x <- pack xs ]
