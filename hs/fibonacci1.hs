fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n | n >= 2
      = fib (n-1) + fib (n-2)
