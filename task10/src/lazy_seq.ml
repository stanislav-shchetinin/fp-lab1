let seq_gen k n =
  Seq.unfold (fun state ->
    match state with
    | state when state = n + 1 -> None
    | _ -> Some (state, state + 1)
    ) k
let is_not_good x i = x mod i = 0 && x != i
let int_sqrt n = int_of_float (Float.sqrt (float_of_int n)) + 1
let is_prime n = 
  seq_gen 2 (int_sqrt n) 
  |> List.of_seq
  |> List.filter (is_not_good n)
  |> (List.fold_left (+) 0) = 0
 
let sum_of_primes n =
  seq_gen 2 n
  |> List.of_seq
  |> List.filter is_prime
  |> List.fold_left (+) 0
