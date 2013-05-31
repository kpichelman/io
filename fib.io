// Recursion Method
fibR := method(x, if(x == 1) then (return 1) elseif(x == 2) then (return 1) else (return fibR(x-2) + fibR(x-1))) 

// Loops
fibL := method(x, prev_tot1 := 1;prev_tot2 := 1;total := 0; index := 2; if (x == 1 or x == 2, return 1)  while (index < x, total = prev_tot1 + prev_tot2; prev_tot2 = prev_tot1; prev_tot1 = total; index = index + 1); return total)

// Print results
testR := method("fibR(1): " print; fibR(1) println; "fibR(4): " print; fibR(4) println; "fibR(7): " print; fibR(7) println)
testL := method("fibL(1): " print; fibL(1) println; "fibL(4): " print; fibL(4) println; "fibL(7): " print; fibL(7) println)

testR
testL
