let rec sum_of_primes n acc = 
  match n with
  | 0 | 1 -> acc
  | _ -> 
    let rec is_prime n i =
      match i with
      | i when
              float_of_int i > Float.sqrt (float_of_int n) -> true
      | _ ->
         match n mod i with 
         | 0 -> false
         | _ -> is_prime n (i + 1)
    in
    match is_prime n 2 with
    | true -> sum_of_primes (n - 1) (n + acc)
    | false -> sum_of_primes (n - 1) acc
