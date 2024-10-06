let int_sqrt n = int_of_float (Float.sqrt (float_of_int n)) + 1
let is_prime n =
  let flag = ref true in
  for j = 2 to (int_sqrt n) do
    if n mod j = 0 && n != j then flag := false
  done;
  !flag
let sum_of_primes n =
  let ans = ref 0 in
  for i = 2 to n do
    if is_prime i then 
      ans := !ans + i
  done;
  !ans



