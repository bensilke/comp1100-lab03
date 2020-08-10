module Person where


data Person = Person Name Age
    deriving Show
type Name = String
type Age = Int

birthday :: Person -> Person
birthday person = case person of 
    Person name age -> Person name (age + 1)
    