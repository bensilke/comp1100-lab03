{-|
Module      : Season
Author      : Debashish Chakraborty, ben silke, u66757274
Date        : 29/01/2019
Description : This module contains functions to check characteristics of 
              different seasons.
-}
module Season where

-- | GPA Calculator
--
-- >>> isCold Summer
-- False
--
-- >>> isCold Winter
-- True


data Season = Spring | Summer | Autumn | Winter
    deriving Show

isCold :: Season -> Bool
isCold season = case season of
    Spring -> False
    Summer -> False
    Autumn -> False
    Winter -> True

isColdTwo :: Season -> Bool
isColdTwo season 
    | season == Winter = True
    | otherwise        = False

