{-
Section (1) codes in details
Written by: Abdo Sharaf
-}

module Main where

-- Import the used modules.
import Data.List (intercalate, intersperse, sort)
import Data.Char (toUpper, toLower)



-- Functions:-

{-
Add function takes 2 integers x and y, and return the addition of them which
is an integer also.
-}
add :: Int -> Int -> Int        -- Function Declaration
add x y = x + y                 -- Function Definition



-- Recursion Functions:-
fact :: Int -> Int
fact 0 = 1          -- This condition will stop the recursion process
fact n = n * fact(n - 1)


----------------------------------------------------------------------------


-- Main Function
main :: IO()
main = do
    
    -- Declaration of variables
    let x = 10
    let y = 5
    
    
    -- Basic Operations:-
    
    putStrLn "The summation is:"
    print(x+y)
    
    putStrLn "\nThe difference is:"
    print(x-y)
    
    putStrLn "\nThe multiplication is:"
    print(x*y)
    
    putStrLn "\nThe division is:"
    print(x/y)
    
    
    putStrLn "\n\t---------------------"
    
    ----------------------------------------------------------------------------
    
    -- Conditions:-
    
    {-
    Here, the even function check if the variable is even or not, and return a
    boolean, which is used as the if condition.
    -}

    if even 33
        then putStrLn "\n33 is even"
    else putStrLn "\n33 is odd"
    
    
    putStrLn "\n\t---------------------"
    
    ----------------------------------------------------------------------------
    
    -- Functions:-
    
    {-
    We call the function using its name, and the arguments should be after its
    name with the same order you declared them in the declaration.
    -}
    putStrLn "Add function output:"
    print(add 15 5)
    
    
    putStrLn "\n\t---------------------"
    
    ----------------------------------------------------------------------------
    
    -- Recursion Functions:-
    
    {-
    Use the declared fact function that takes an integer, and calculate the
    factorial of that number using recursion, then return the result.
    -}
    putStrLn "\nFactorial of 5 is:"
    print(fact 5)
    
    
    putStrLn "\n\t---------------------"
    
    ----------------------------------------------------------------------------
    
    -- Lambda Functions:-
    
    {-
    The syntax for a lambda function in Haskell is \arguments -> expression,
    where arguments are the input parameters and expression is the body of the
    function. Lambda functions can be used inline or passed as arguments to
    other functions. You can also store it in a variable and use it just like a
    normal function.
    -}
    putStrLn "\nThe successor of 5 is:"
    print((\x -> x+1) 5)
    
    
    putStrLn "\n\t---------------------"
    
    ----------------------------------------------------------------------------
    
    -- Modules:-
    
    ------------ (1) List ------------
    
    {-
    It is used to insert a separator element between every pair of elements in
    a list. It takes the separator element as the first argument and the input
    list as the second argument. The resulting list contains the original
    elements of the input list with the separator element inserted between
    each pair.
    -}
    putStrLn "\nThe separated items:"
    print(intersperse '.' "Abdo Sharaf") -- "A.b.d.o. .S.h.a.r.a.f"
    print(intersperse 0 [1, 2, 3]) -- [1, 0, 2, 0, 3]
    
    
    {-
    It is used to join a list of lists into a single list by inserting a
    separator list between each pair of lists. The separator list is
    specified as the first argument to intercalate, and the list of
    lists is specified as the second argument.
    
    If you pass a list of numbers it will throw an error, because you must
    convert the list items to strings using map & show functions first.
    -}
    putStrLn "\nThe joined list:"
    print(intercalate "-" ["Abdo", "Ashraf", "Sharaf"]) -- "Abdo-Ashraf-Sharaf"
    
    
    {-
    It is used to split a list into two parts at a specified index. It takes
    an index as the first argument and a list as the second argument. The
    resulting tuple contains two lists: the first list contains elements from
    the beginning of the input list up to the specified index, and the second
    list contains the remaining elements.
    -}
    putStrLn "\nThe split string at index 7:"
    print(splitAt 7 "Abdo Sharaf")
    
    
    {-
    It is used to sort a list elements. It works with numeric and string items,
    and uses the default ordering. If you want to order the items in descending
    order, use the reverse function on the ordered list.
    -}
    putStrLn "\nThe sorted list:"
    print(sort [9, 5, 0, 1, 4, 7, 10, 3, 8, 2, 6, 8])
    
    
    
    ------------ (2) Char ------------
    
    putStrLn "\nChange Lower 'a' to Upper 'A':"
    print(toUpper 'a')
    
    
    putStrLn "\nChange Upper 'A' to Lower 'a':"
    print(toLower 'A')
    
    
    {-
    It splits a string into a list of words. It divides the input string at
    whitespace characters (spaces, tabs, and newlines) and returns a list of
    the individual words.
    -}
    putStrLn "\nSplit string into words:"
    print(words "Abdo Ashraf Sharaf")

