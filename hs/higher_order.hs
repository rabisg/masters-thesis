map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

increment :: Int -> Int
increment = (+) 1

-- adds 1 to all numbers in a list
incListBy1 :: [Int] -> [Int]
incListBy1 = map increment
