let rec iteration maxn n = 
  match n with
  | n when n == maxn -> []
  | _ -> 
    let rec is_prime n i =
      match i with
      | i when float_of_int i > Float.sqrt (float_of_int n) -> true
      | _ -> if n mod i == 0 then false else is_prime n (i + 1)
    in
    if is_prime n 2 then n :: iteration maxn (n + 1) else iteration maxn (n + 1)
     

let () = List.iter (fun x -> Printf.printf "%d\n" x) (iteration 2000000 2);