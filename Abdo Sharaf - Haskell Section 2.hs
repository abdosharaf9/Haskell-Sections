{-
Section (2) codes in details
Written by: Abdo Sharaf
-}

module Main where


-- Main Function
main :: IO()
main = do
    
    -- Declaration of variables
    let x = ["Abdo", "Sharaf"];
    let y = ['A', 'b', 'd', 'o', ' ', 'S', 'h', 'a', 'r', 'a', 'f']
    let z = [1, 2, 3, 4]
    
    
    print(x)
    print(y) -- This will print a string, because it's a list of chars

    ----------------------------------------------------------------------------
    
    -- List Operators:-
    
    -- Add the second list at the end of the first one.
    print(x ++ ["Ziad"])
    
    
    -- Add 0 to the beginning of list z.
    print(0 : z)
    
    {-
    Print a tuple, first item is 'E', the second is the list y with 'A' added
    to the beginning.
    -}
    print('E', 'A' : y)
    
    -- Add many elements to the beginning of the list z.
    print(-3 : -2 : -1 : z)


    -- Return the element in the specified index.
    print(x !! 1)
    
    {-
    Lists can hold lists, but they must be from the same type, here we have a
    list of strings, each element is a list of chars, so we can get any element
    from it.
    -}
    print(x !! 0 !! 0)
    

    -- It compares the lists element-by-element.
    print([0, 1, 2] > [5, 4, 3])
    print([0, 1, 2] > [-1, 4, 3])
    print([0, 1, 2] < [5, 4, 3])
    print([0, 1, 2] == [5, 4, 3])
    
    ----------------------------------------------------------------------------
    
    -- Basic Functions on Lists:-
    
    -- Return the first element of the list.
    print(head z)
    
    -- Return the list elements after the first one.
    print(tail z)
    
    -- Return the last element of the list.
    print(last z)
    
    -- Return the list elements before the last one.
    print(init z)
    
    -- Return the length of the list.
    print(length z)
    
    -- Return True if the list is empty, otherwise, it returns False.
    print(null z)
    
    -- Reverse the list elements.
    print(reverse z)
    
    {-
    It takes a number (n) and a list. It returns the first n elements from the
    list.
    -}
    print(take 2 z)
    
    {-
    It takes a number (n) and a list. It removes the first n elements from the
    list.
    -}
    print(drop 2 z)
    
    -- Return the maximum element in the list.
    print(maximum z)
    
    -- Return the minimum element in the list.
    print(minimum z)
    
    -- Return the summation of all elements in the list.
    print(sum z)
    
    -- Return the product of all elements in the list
    print(product z)
    
    -- Check if the element is in the list or not.
    print(5 `elem` z)
    
    