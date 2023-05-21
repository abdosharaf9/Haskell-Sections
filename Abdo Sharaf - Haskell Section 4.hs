{-
Section (4) codes in details
Written by: Abdo Sharaf
-}

module Main where


-- Pattern matching function that takes an integer and match it to a pattern.
sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "You aren't between 1 and 5!!!!"



{-
":: (Num a) =>" This part specifies the type constraint for the function. It
states that the type a must be an instance of the Num type class. The Num type
class encompasses numeric types such as integers, floating-point numbers, and
others that support basic arithmetic operations.

"(a, a) -> (a, a) -> (a, a)" This is the type signature of the function. It
indicates that the function takes two tuples of type (a, a) as arguments and
returns a tuple of the same type (a, a). In other words, the function accepts
two vectors (each represented by a tuple of two elements) and returns their sum
as another vector.
-}

-- Add 2D vectors with normal function.
addVectors :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectors a b = (fst a + fst b, snd a + snd b)

-- Add 2D vectors with pattern matching.
addVectorsV2 :: (Num a) => (a, a) -> (a, a) -> (a, a)
addVectorsV2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)



-- Making function for a triple.
first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z



{-
This function takes 2 floats, the weight and the squared height. The "|" works
like the switch case in other languages, There is a case after it, and all these
cases/conditions are evaluated and the appropriate branch is selected. after
the "=" comes the output for this case.
-}
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | weight / height^2 <= 18.5 = "You're underweight, you emo, you!"
    | weight / height^2 <= 25.0 = "You're supposedly normal"
    | weight / height^2 <= 30.0 = "You're fat! Lose some weight, fatty!"
    | otherwise                 = "You're a whale, congratulations!"



----------------------------------------------------------------------------


-- Main Function
main :: IO()
main = do
    
    -- Pattern Matching:-
    
    {-
    Make sure to make a catch-all pattern, so the program won't crash. Here we
    made the pattern x which will be executed for any numbers not in range 1..5.
    -}
    print(sayMe(10))
    
    ----------------------------------------------------------------------------
    
    -- Pattern Matching - Practice (1):-
    {-
    Make a function that takes 2 vectors in a 2D space (in the form of pairs)
    and adds them together.We need to add their x components separately and
    then their y components separately.
    -}
    print(addVectors (1,2) (3,4))
    print(addVectorsV2 (5,8) (2,1))
    
    ----------------------------------------------------------------------------
    
    -- Pattern Matching - Practice (2):-
    {-
    Make functions to a triple that simulate the fst and snd in the tuple.
    -}
    print(first (1, 2, 3))
    print(second (1, 2, 3))
    print(third (1, 2, 3))
    
    
    ----------------------------------------------------------------------------
    
    -- Guards - Practice (3):-
    {-
    Make a simple function that berates you differently depending on your BMI
    (body mass index). Your BMI equals your weight (Kgm) divided by your height
    (m) squared. If your BMI is less than 18.5, you're considered underweight.
    If it's anywhere from 18.5 to 25 then you're considered normal. 25 to 30 is
    overweight and more than 30 is obese.
    -}
    print(bmiTell 80 1.8)

