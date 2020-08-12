
module Mensuration where

-- | GPA Calculator
--
-- >>> area(Circle 2)
-- 12.566370614359172
--
-- >>> area(Rectangle(2,4))
-- 8




data Shape
  = Circle Double -- ^ Radius
  | Square Double -- ^ Side length
  | Rectangle Double Double -- ^ Width, Height


area :: Shape -> Double
area shape = case shape of
    Circle x -> pi * x * 2
    Square x -> x * x
    Rectangle l w -> l * w

