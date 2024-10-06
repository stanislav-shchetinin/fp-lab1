let rec seq_gen k n acc =
  if k > n then acc else seq_gen (k + 1) n (k :: acc)
let is_not_good x i = x mod i = 0 && x != i
let int_sqrt n = int_of_float (Float.sqrt (float_of_int n)) + 1
let is_prime n = 
  seq_gen 2 (int_sqrt n) []
  |> List.filter (is_not_good n)
  |> (List.fold_left (+) 0) = 0
  
let sum_of_primes n = seq_gen 2 n [] |> List.filter is_prime |> List.fold_left (+) 0
