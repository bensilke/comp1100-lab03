{-|
Module      : GPACalculator
Author      : Debashish Chakraborty, Your name and UID here
Date        : 04/02/2019
Description : This module contains functions to calculate GPA from grades and marks.
-}

module GPACalculator where

data Grade = Fail | Pass | Credit | Distinction | HighDistinction
   deriving Show

type Course = String
type GP = Double
type GPA = Double
type Mark = Int

-- | Exercise 3
-- Convert marks to grade
markToGrade ::  Mark -> Grade
markToGrade mark
  | mark >= 80 && mark <= 100 = HighDistinction
  | mark >= 70 && mark <   80 = Distinction
  | mark >= 60 && mark <   70 = Credit
  | mark >= 50 && mark <   60 = Pass
  | mark >=  0 && mark <   50 = Fail

-- | Exercise 4
-- Your comment here
markToGrade' :: (Course, Mark) -> Grade
markToGrade' = undefined

-- | Exercise 5
-- Your comment here
markToGradeSafe ::  Mark -> Maybe Grade
markToGradeSafe = undefined

-- | Exercise 6
-- Your comment here
maybeGradeToGPA :: Maybe Grade -> GPA
maybeGradeToGPA = undefined

-- | Exercise 7
-- Your comment here
markToGPA :: Mark -> GPA
markToGPA = undefined
