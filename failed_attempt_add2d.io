# We define a 2-d array as a list of lists.
# array[][] == list(list(), list(), ... list()))

#add some elements to our array
ary := list(list(9, 2, 3), list(2, 3, 4), list(1, 3, 5))

"Start" println

deepAdd := method(x,
	"deepAdd start" println
	total := 0; 
	max := x size;
	for(idx, 0, max, 
		"Debug" println;
		idx println;
		total println;
		x at(idx) println;
		x type() println;
		if(x at(idx) type() == "List", 
			return deepAdd(x at(idx)),
			total = total + x at(idx); 
			return total)
	)
)
final := deepAdd(ary)

"Done" println
final println
