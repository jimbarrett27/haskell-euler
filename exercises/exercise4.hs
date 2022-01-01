reverseInt :: Int -> Int
reverseInt x = read (reverse (show x))

isPalindromeInt :: Int -> Bool
isPalindromeInt x = x == reverseInt x

palindromes :: [Int]
palindromes = [x*y | x <- [1..maxVal], y <- [x..maxVal], isPalindromeInt (x*y)]
    where maxVal = 999

answer :: Int
answer = maximum palindromes