let rec iteration maxn n acc = 
  match n with
  | n when n == maxn -> acc
  | _ -> 
    let rec is_prime n i =
      match i with
      | i when float_of_int i > Float.sqrt (float_of_int n) -> true
      | _ -> if n mod i == 0 then false else is_prime n (i + 1)
    in
    if is_prime n 2 then iteration maxn (n + 1) (n :: acc) else iteration maxn (n + 1) acc
     

let () = List.iter (fun x -> Printf.printf "%d\n" x) (List.rev(iteration 2000000 2 []));