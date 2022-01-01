nextFibonacci :: [Integer] -> [Integer]
nextFibonacci [] = [1]
nextFibonacci [1] = [1,2]
nextFibonacci xs = xs ++ [last xs  + last (init xs)]  

fibs :: Int  -> [Integer]
fibs n = iterate nextFibonacci [] !! (n-1)

answer :: Integer
answer = sum [x | x <- fibs 100, even x, x < 4000000]


