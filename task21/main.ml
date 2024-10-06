let result = 31626;;

(*Resursive module check*)
assert(Recursive.sum_of_pairs 10000 1 == result);
Printf.printf "Recursive: %d\n" (Recursive.sum_of_pairs 10000 1);

(*Tail_resursive module check*)
assert(Tail_recursive.sum_of_pairs 10000 1 0 == result);
Printf.printf "Tail recursive: %d\n" (Tail_recursive.sum_of_pairs 10000 1 0);

(*Modular module check*)
assert(Modular.sum_of_pairs 10000 == result);
Printf.printf "Modular: %d\n" (Modular.sum_of_pairs 10000);

(*Map module check*)
assert(Map.sum_of_pairs 10000 == result);
Printf.printf "Map: %d\n" (Map.sum_of_pairs 10000);

(*For module check*)
assert(For.sum_of_pairs 10000 == result);
Printf.printf "For: %d\n" (For.sum_of_pairs 10000);