let seq_gen k n = List.init (n - k + 1) (fun i -> k + i)
let is_not_good x i = x mod i = 0 
let int_sqrt n = int_of_float (Float.sqrt (float_of_int n)) + 1
let is_prime n = 
  seq_gen 2 (int_sqrt n) 
  |> List.filter (is_not_good n)
  |> (List.fold_left (+) 0) = 0
 
let list_of_primes n = seq_gen 2 n |> List.filter is_prime

let () = List.iter (fun x -> Printf.printf "%d\n" x) (list_of_primes 2000000);