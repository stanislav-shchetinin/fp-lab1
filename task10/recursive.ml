let rec sum_of_primes maxn n = 
  match n with
  | n when n = maxn -> 0
  | _ -> 
    let rec is_prime n i =
      match i with
      | i when float_of_int i > Float.sqrt (float_of_int n) -> true
      | _ -> if n mod i = 0 then false else is_prime n (i + 1)
    in
    if is_prime n 2 then n + sum_of_primes maxn (n + 1) else sum_of_primes maxn (n + 1)
