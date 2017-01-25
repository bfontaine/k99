check:{[n;expected;expr]
  `0:(("Problem ",$n),": ",:[expected=expr;"ok";"not ok"],"\n")}

check[1; "o"; last "foo"]
check[2; "e"; butlast "abcdef"]
check[3; "c"; elementat["abcdef";3]]
check[4; 4; length 1 2 3 4]
