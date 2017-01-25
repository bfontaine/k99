check:{[n;expected;expr]
  `0:(("Problem ",$n),": ",:[expected=expr;"ok";"not ok"],"\n")}

check[1; "o"; last "foo"]
check[2; "e"; butlast "abcdef"]
