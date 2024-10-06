let rec sum_of_primes maxn n acc = 
  match n with
  | n when n = maxn -> acc
  | _ -> 
    let rec is_prime n i =
      match i with
      | i when float_of_int i > Float.sqrt (float_of_int n) -> true
      | _ -> if n mod i = 0 then false else is_prime n (i + 1)
    in
    if is_prime n 2 then sum_of_primes maxn (n + 1) (n + acc) else sum_of_primes maxn (n + 1) acc
     

let () = Printf.printf "%d\n" (sum_of_primes 2000000 2 0)