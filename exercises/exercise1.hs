answer :: Int
answer = sum [x | x <- init [1..1000], (mod x 3 == 0) || (mod x 5 == 0)]