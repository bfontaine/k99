/ Problem 1
last: *|:

/ Problem 2
butlast:{*-2#x}

/ Problem 3
elementat:{(0,x)@y}

/ Problem 4
length: #:

/ Problem 5
reverse: |:

/ Problem 6
ispalindrome:{x~|x}

/ Problem 7
/ (not sure what's the difference between ,/ and ,// but the latter works and
/  the former doesn't)
flatten: ,//

/ Problem 8
compress: {x[&~=': x,"_"]}
/ FIXME it only works with strings of length >1 that don't end with "_".
/ How it works:
/   =':  -> a=b for each a,b pair of x
/   ~    -> reverse it, i.e. a!=b
/   &    -> get the indexes of the 1s (i.e. where a!=b)
/   x[…] -> get those
/
/ We need to append another char so that the last letter is returned
