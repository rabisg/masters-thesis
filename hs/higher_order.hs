map :: (a -> b) -> [a] -> [b]
map _ [] = []
map f (x:xs) = f x : map f xs

increment :: Int -> Int -> Int
increment = (+)

-- adds 1 to all numbers in a list
incListBy1 :: [Int] -> [Int]
incListBy1 = map $ increment 1
