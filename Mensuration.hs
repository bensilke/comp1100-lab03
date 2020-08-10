
module Mensuration where


data Shape
  = Circle Double -- ^ Radius
  | Square Double -- ^ Side length
  | Rectangle Double Double -- ^ Width, Height


area :: Shape -> Double
area shape = case shape of
    Circle x -> pi * x * 2
    Square x -> x * x
    Rectangle l w -> l * w

