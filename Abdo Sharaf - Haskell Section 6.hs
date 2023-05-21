{-
Section (6) codes in details
Written by: Abdo Sharaf
-}

module Main where

-- Import the created module, make sure it's in the same directory.
import Geometry


----------------------------------------------------------------------------


-- Main Function
main :: IO()
main = do
    
    print(Geometry.sphereArea 30.0)
    
    
    {-
    We can do a hierarchy in modules. To do it here, create a directory with
    name "Geometry" inside it create 3 files:
        1- Sphere.hs
        2- Cube.hs
        3- Cuboid.hs
    and each one of these files is a sub-module of the Geometry, so you must
    start it with "module Geometry.Sphere() where" to show it is a sub-module.
    
    You can import any one of them like this "import Geometry.Sphere as Sphere".
    
    Note: You can import them in each other!!
    -}
    
    