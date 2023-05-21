{-
Inside the parenthesis, we write the functions we can access from outside of
the module.
-}
module Geometry(
sphereVolume,
sphereArea,
cubeVolume,
cubeArea,
cuboidVolume,
cuboidArea
) where
    
    sphereArea :: Float -> Float
    sphereArea r = 4 * pi * (r^2)
    
    sphereVolume :: Float -> Float
    sphereVolume r = (4.0 / 3.0) * pi * (r^3)
    
    
    
    cubeArea :: Float -> Float
    cubeArea s = cuboidArea s s s
    
    cubeVolume :: Float -> Float
    cubeVolume s = cuboidVolume s s s
    
    
    
    cuboidArea :: Float -> Float -> Float -> Float
    cuboidArea x y z = 2 * (rectangleArea x y + rectangleArea x z + rectangleArea y z)
    
    cuboidVolume :: Float -> Float -> Float -> Float
    cuboidVolume x y z = rectangleArea x y * z
    
    
    
    rectangleArea :: Float -> Float -> Float
    rectangleArea x y = x * y
    
    