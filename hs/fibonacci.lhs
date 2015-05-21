fib generates an infinite list of fibonacci numbers
by zipping the list with itself
> fibs :: [Int]
> fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

Now one can define a function to get the nth fibonacci number
by just using the (!!) operator which fetches the nth element of the list
> fibN :: Int -> Int
> fibN n = fibs !! n
