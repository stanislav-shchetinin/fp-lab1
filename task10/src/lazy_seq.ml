let seq_gen k =
  Seq.unfold (fun x -> Some (x, x + 1)) k
let is_not_good x i = x mod i = 0 && x != i
let int_sqrt n = int_of_float (Float.sqrt (float_of_int n)) + 1
let is_prime n = 
  let limit = int_sqrt n in
  List.init limit (fun i -> 2 + i)
  |> List.filter (is_not_good n)
  |> (List.fold_left (+) 0) = 0
let sum_of_primes n =
  seq_gen 2
  |> Seq.take n
  |> Seq.filter is_prime
  |> Seq.fold_left (+) 0
