-- Problem 20
-- (*) Remove the K'th element from a list.


removeAt :: Int -> [a] -> (a, [a])
removeAt n xs = (head $ drop (n - 1) xs, [ x | (i, x) <- zip [1..] xs, i /= n ])

