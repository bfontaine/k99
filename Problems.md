# 99 K Problems

This list comes from [Kona’s wiki][origin], modified not to include the
solutions.

[origin]: https://github.com/kevinlawler/kona/wiki/K-99%3A-Ninety-Nine-K-Problems

## Problem 1
Find the last element of a list.

### Example
````k
  last "abcdef"
"f"
````

## Problem 2
Find the last but one element of a list.

### Example
````k
  butlast "abcdef"
"e"
````

## Problem 3
Find the K'th element of a list.

### Example
````k
  elementat["abcdef";3]
"c"
````

## Problem 4
Find the number of elements of a list.

### Example
````k
  length 1 2 3 4
4
````

## Problem 5
Reverse a list.

### Example
````k
  reverse "abcdef"
"fedcba"
````

## Problem 6
Find out whether a list is a palindrome.

### Example
````k
  ispalindrome "aacbcaa"
1
````

## Problem 7
Flatten a nested list structure.

### Example
````k
  flatten ((1;2 3);(4;(5;(6;7)));8)
1 2 3 4 5 6 7 8
````

## Problem 8
Eliminate consecutive duplicates of list elements.

### Example
````k
  compress "aaaabccaadeeee"
"abcade"
````

## Problem 9
Pack consecutive duplicates of list elements into sublists.

### Example
````k
  pack "aaaabccaadeeee"
("aaaa"
 ,"b"
 "cc"
 "aa"
 ,"d"
 "eeee")
````

## Problem 10
Run-length encoding of a list.

### Example
````k
  encode "aaaabccaadeeee"
((4;"a")
 (1;"b")
 (2;"c")
 (2;"a")
 (1;"d")
 (4;"e"))
````

## Problem 11
Modified run-length encoding.

### Example
````k
  encodemod "aaaabccaadeeee"
((4;"a")
 ,"b"
 (2;"c")
 (2;"a")
 ,"d"
 (4;"e"))
````

## Problem 12
Decode a run-length encoded list.

### Example
````k
  decodemod ((4;"a");"b";(2;"c");(2;"a");"d";(4;"e"))
"aaaabccaadeeee"
````

## Problem 13
Run-length encoding of a list (direct solution).<br />
Don't explicitly create the sublists containing the duplicates, only count them.

### Example
````k
  encodedir "aaaabccaadeeee"
((4;"a")
 ,"b"
 (2;"c")
 (2;"a")
 ,"d"
 (4;"e"))
````

## Problem 14
Duplicate the elements of a list.

### Example
````k
  dupl "abccd"
"aabbccccdd"
````

## Problem 15
Duplicate the elements of a list a given number of times.

### Example
````k
  repl["abccd";3]
"aaabbbccccccddd"
````

## Problem 16
Drop every N'th element from a list.

### Example
````k
  dropevery["abcdefghij";3]
"abdeghj"
````

## Problem 17
Split a list into two parts; the length of the first part is given.<br />
Do not use any predefined predicates.

### Example
````k
  split["abcdefghij";3]
("abc"
 "defghij")
````

## Problem 18
Extract a slice from a list.

### Example
````k
  slice["abcdefghij";3;7]
"cdef"
````

## Problem 19
Rotate a list N places to the left.

### Example
````k
  rotate["abcdefghij";3]
"defghijabc"
````

## Problem 20
Remove the K'th element from a list.

### Example
````k
  removeat["abcdef";3]
("c"
 "abdef")
````

## Problem 21
Insert an element at a given position into a list.

### Example
````k
  insert["abcd";2;"alfa"]
("a"
 "alfa"
 "b"
 "c"
 "d")
````

## Problem 22
Create a list containing all integers within a given range.

### Example
````k
  range[3;7]
3 4 5 6 7
  range[9;3]
9 8 7 6 5 4 3
````

## Problem 23
Extract a given number of randomly selected elements from a list.

### Example
````k
  rndselect["abcdefgh";3]
"bfe"
````

## Problem 24
Lotto: Draw N different random numbers from the set 1..M.

### Example
````k
  lotto[6;49]
12 34 15 31 29 22
````

## Problem 25
Generate a random permutation of the elements of a list.

### Example
````k
  rndperm["abcdef"]
"efbadc"
````

## Problem 26
Generate the combinations of K distinct objects chosen from the N elements of a list.

### Example
````k
  combin["abcdef";3]
("abc"
 "abd"
 "abe"
 "abf"
 ...
 "def")
````

## Problem 27 (Incomplete)
Group the elements of a set into disjoint subsets.

### Example
````k
  list:("aldo";"beat";"carla";"david";"evi";"flip";"gary";"hugo";"ida")
  group[list;3]
(("evi"
  "flip"
  "ida")
 ("evi"
  "flip"
  "gary")
 ...)
````

## Problem 28
### a)
Sorting a list of lists according to length of sublists.

### Example
````k
  lsort[("abc";"de";"fgh";"de";"ijkl";"mn";"o")]
("o"
 "de"
 "de"
 "mn"
 "abc"
 "fgh"
 "ijkl")
````

## Problem 29 (2.01)
Determine whether a given integer number is prime.

### Example
````k
  isprime ' 0 1 2 4 5
0 0 1 0 1
````

## Problem 30 (2.02)
Determine the prime factors of a given positive integer.

### Example
````k
  primefactors 315
3 3 5 7
````

## Problem 31 (2.03)
Construct a list containing the prime factors and their multiplicity.

### Example
````k
  multiplicity 315
(2 3
 1 5
 1 7)
````

## Problem 32 (2.04)
Given a range of integers by its lower and upper limit, construct a list of all prime numbers in that range.

### Example
````k
  primes[2;25]
2 3 5 7 11 13 17 19 23
````

## Problem 33 (2.05)
Goldbach's conjecture says that every positive even number greater than 2 is the sum of two prime numbers. Example: 28 = 5 + 23. It is one of the most famous facts in number theory that has not been proved to be correct in the general case. Find the two prime numbers that sum up to a given even integer.

### Example
````k
  goldbach 28
5 23
````

## Problem 34 (2.06)
Given a range of integers by its lower and upper limit, print a list of all even numbers and their Goldbach composition.

### Example
````k
  goldbachc[9;20]
(10 3 7
 12 5 7
 14 3 11
 16 3 13
 18 5 13
 20 3 17)
````

## Problem 35 (2.07)
Determine the greatest common divisor of two positive integer numbers.

### Example
````k
  gcd[36;63]
9
````

## Problem 36 (2.08)
Determine whether two positive integer numbers are coprime.
Two numbers are coprime if their greatest common divisor equals 1.

### Example
````k
  coprime[35;64]
1
  coprime[35;63]
0
````

## Problem 37 (2.09)
Calculate Euler's totient function phi(m).
Euler's so-called totient function phi(m) is defined as the number of positive integers r (1 <= r < m) that are coprime to m.

### Example
````k
  phi 10
4
````

## Problem 38 (2.10)
Calculate Euler's totient function phi(m)(2).
If the list of the prime factors of a number m is known in the form of problem 2.03 then the function phi(m) can be efficiently calculated as follows: Let [[m1,p1],[m2,p2],[m3,p3],...] be the list of prime factors (and their multiplicities) of a given number m. Then phi(m) can be calculated with the following formula:

````k
phi(m) = (p1 - 1) * p1^(m1 - 1) * (p2 - 1) * p2^(m2 - 1) * (p3 - 1) * p3^(m3 - 1) * ...
````

### Example
````k
  phi2 10
4
````

## Problem 39 (2.11)
Compare the two methods of calculating Euler's totient function.

### Example
````k
  \t phi 10090
806
  \t phi2 10090
7
````
