# Foundations of Computer Science Lab01

In this repository you will find this file and a file called _lab01-lists.rkt_.
- README.md (the file you are currently reading) contains all the instructions for this assignment.
- lab01-lists.rkt is the file that you will put all your answers in. It also contains some comments and code snippets that you should read through.

### Instructions
You will be using lists in racket to play a dice game based on the game _Pig_. The rules of this game are as follows:
- A player rolls a 12 sided die as many times as they like.
- If a player rolls an even number of times, their score is the sum of all even values rolled.
- If a player rolls an odd number of times, their score is the sum of all the odd values rolled.
- If a player rolls an even number of times, but gets a 1 or 2, their score is 0.
- If a player rolls an odd number of times, but gets a 1, their score is 0.

---
### Question 0
- Fill in the body for the function `rollList`.
  - `(rollList n)` should use `build-list` and `random` to generate a list of `n` random integers in the range `[1, 12]`.
- Create a variable `rolls`, which should be the result of using `rollList` to generate 6 rolls.


---
### Question 1
- Fill in the body for the function `filterRolls`.
- `(filterRolls evenOrOdd g)` should use `filter` to return a list containing:
  - The even values in `g` if `evenOrOdd` is `#true`.
  - The odd values in `g` if `evenOrOdd` is `#false`.
- Create a variable `evens`, which should use `filterRolls` and contain the even values found in `rolls`.
- Create a variable `odds`, which should use `filterRolls` and contain the odd valuess found in `rolls`.

---
### Question 2
- Use `foldl` and the list variables `evens` and `odds` to set `evenScore` to the sum of all the even values from `rolls` and odd values respectively.
  - Note this does not require you to write an entire function.

---
### Question 3
- Fill in the body for the function `losingRoll`.
- `(losingRoll failValue g)` should use `foldl` to return:
  - `#t` if any value in `g` is less than or equal to `failVale`.
  - `#f` otherwise.

---
### Question 4
- Fill in the body for the function `getScore`.
- `(getScore evenOrOdd g)` should return the correct score for the rolls in list `g`.
  - If `evenOrOdd` is `#t`, find the correct score based on an even number of rolls.
  - If `evenOrOdd` is `#f`, find the correct score based on an odd number of rolls.
- This function should call `losingRoll`, `filterRolls` and `foldl`.

---
### Question 5
- Fill in the body for the function `playGame`.
- `(playGame numRolls)` should return the score for a single game played using `numRolls` rolls.
- This function should call `getScore` and `rollList`
