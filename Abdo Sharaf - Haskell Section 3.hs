{-
Section (3) codes in details
Written by: Abdo Sharaf
-}

module Main where


-- Main Function
main :: IO()
main = do
    
    print[0..10] -- Print the numbers from 0 to 10.
    print['A'..'Z'] -- Print the letters from A to Z.
    
    
    print[0, 2..10] -- Print the even numbers from 0 to 10.
    print[1, 3..10] -- Print the odd numbers from 1 to 10.
    
    print[3, 6..20] -- Print the multiples of 3, from 3 to 20.
    
    print[20, 18..0] -- Print the even numbers from 20 to 0.
    
    {-
    Watch out when using floating point numbers in the range, because they
    aren't precise, and output a strange results.
    -}
    print[0.1, 0.3..1]
    
    ----------------------------------------------------------------------------
    
    -- Infinite lists:-
    
    -- Infinite list of the same list elements.
    -- print(cycle [1,2,3])
    
    -- Infinite list, which all its elements are the given number.
    -- print(repeat 5)
    
    -- Takes the first 11 element from the cycle output.
    -- print(take 11 (cycle "Abdo "))
    
    -- The first number is how many the second number will be repeated.
    print(replicate 10 5)
    
    
    ----------------------------------------------------------------------------
    
    -- Tuples:-
    
    -- Unlike the lists, it can hold any data type.
    print(1, "Abdo", 'A', True)
    print([1, 2], (False, [2, 5]))
    
    ----------------------------------------------------------------------------
    
    -- Basic Functions on Tuples:-
    
    -- Takes a pair and returns the first element of it
    print(fst ("Abdo", "Sharaf"))
    
    -- Takes a pair and returns the second element of it
    print(snd ("Abdo", "Sharaf"))
    
    {-
    Takes 2 lists, and zips them into one list of pairs, by joining every 2
    elements in the same index together. The result list size will be as the
    smallest input list.
    -}
    print(zip [1, 2, 3] [5, 6, 7])
    
    -- 
    print(zip [1, 2] ['A', 'B', 'C'])
    
    