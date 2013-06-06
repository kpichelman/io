# We define a 2-d array as a list of lists.
# array[][] == list(list(), list(), ... list()))

#add some elements to our array
ary := list(list(9, 2, 3), list(2, 3, 4), list(1, 3, 5))

"Start" println

deepAdd := method(x,
	"deepAdd start" println
	flatList := x flatten() #this is the method I didn't know about
	total := 0; 
	max := flatList size - 1;
	for(idx, 0, max, 
		idx println;
		flatList at(idx);
		total = total + flatList at(idx);
		total println;
	)
)
final := deepAdd(ary)

"Done" println
final println
