{-
Section (5) codes in details
Written by: Abdo Sharaf
-}

module Main where

-- Import the used modules.
import Data.Map as Map

{-
Because the names in Data.Set clash with a lot of Data.List names, we do a
qualified import.
-}
import qualified Data.Set as Set



----------------------------------------------------------------------------


-- Main Function
main :: IO()
main = do
    
    -- Association Lists:-
    
    {-
    This is called an association list (Ditionary), which is a list of tuples,
    the first item of the tuple is the key, and the second item is the value.
    -}
    let phoneBook = [("Abdo", "111-1111"), ("Ziad", "111-2222"), ("Asem", "111-3333")]
    
    
    
    {-
    Takes an association list (in the form of a list) and returns a map with
    the same associations. If there are duplicate keys in the original
    association list, the duplicates are just discarded and takes the last one.
    -}
    print(Map.fromList phoneBook)
    print(Map.fromList [(1,2), (1,3), (1,4), (2, 1), (3, 2)])
    
    
    
    {-
    Map.empty takes no arguments, it just returns an empty map. The function
    Map.insert takes a key and a value, and a map, it returns a map that is as
    the old one but with the given item inserted.
    -}
    print(Map.insert 3 5 Map.empty)
    
    
    
    -- Checks if the map is empty.
    print(Map.null $ Map.fromList [(1,2)])
    
    
    
    -- Returns the size of the map.
    print(Map.size $ Map.fromList [(1,2), (2,3), (1,5)]) -- 2
    
    
    
    -- Checks if the key is in the map.
    print(Map.member 3 $ Map.fromList[(1,2), (2,1)])
    
    
    
    -- It's the inverse of fromList.
    print(Map.toList $ Map.fromList[(1,2), (2,3)])
    
    ----------------------------------------------------------------------------
    
    -- Sets:-
    
    let text1 = "I just had an anime dream. Anime... Reality... Are they so different?"
    let text2 = "The old man left his garbage can out and now his trash is all over my lawn!"
    
    -- It takes a list and convert it to a set. Which is unique and ordered.
    print(Set.fromList text1)
    
    
    let set1 = Set.fromList text1
    let set2 = Set.fromList text2
    
    
    
    -- It sees which elements they both share.
    print(Set.intersection set1 set2)
    
    {-
    It sees which elements are in the first set but not in the second one
    and vice versa
    -}
    print(Set.difference set1 set2)
    
    
    -- Returns all the unique elements in both sets.
    print(Set.union set1 set2)

    
    -- Checks if the set is empty.
    print(Set.null $ Set.fromList [1,2,3])

    
    -- Returns the set size.
    print(Set.size $ Set.fromList [1,2,3])

    
    -- Insert new item into the set.
    print(Set.insert 4 $ Set.fromList [1,2,3])

    
    -- Delete item from the set.
    print(Set.delete 2 $ Set.fromList [1,2,3])
    
    