-- Problem 16
-- (**) Drop every N'th element from a list.


myDrop :: [a] -> Int -> [a]
myDrop xs y = [ x | (i, x) <- zip [1..] xs, i `mod` y /= 0 ]

