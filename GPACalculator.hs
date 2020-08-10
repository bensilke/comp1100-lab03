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
  | mark > 100 || mark < 0    = error "Not a Valid Mark"
  | otherwise                 = error "There must be an error in the code. See above"

-- | Exercise 4
-- Your comment here
markToGradeCourse :: (Course, Mark) -> Grade
markToGradeCourse (_,mark) = markToGrade mark

  

-- | Exercise 5
-- Your comment here
markToGradeSafe ::  Mark -> Maybe Grade
markToGradeSafe mark
  | mark > 100 || mark < 0    = Nothing
  | otherwise                 = Just (markToGrade mark)
  -- | mark >= 80 && mark <= 100 = Just HighDistinction
  -- | mark >= 70 && mark <   80 = Just Distinction
  -- | mark >= 60 && mark <   70 = Just Credit
  -- | mark >= 50 && mark <   60 = Just Pass
  -- | mark >=  0 && mark <   50 = Just Fail
  -- | mark > 100 || mark < 0    = Nothing
  -- | otherwise                 = Nothing


-- | Exercise 6
-- Your comment here
maybeGradeToGPA :: Maybe Grade -> GPA
maybeGradeToGPA maybeGrade = case maybeGrade of
  Just HighDistinction -> 7
  Just Distinction -> 6
  Just Credit -> 5
  Just Pass -> 4
  Just Fail -> 0
  Nothing -> 0
--  | maybeGrade == Just HighDistinction = 7


-- | Exercise 7
-- Your comment here
markToGPA :: Mark -> GPA
markToGPA mark = maybeGradeToGPA (markToGradeSafe mark)