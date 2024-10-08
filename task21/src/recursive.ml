let rec sum_of_del n i = 
  match i with
  | i when i = n/2 + 1 -> 0
  | _ -> if n mod i = 0 then i + sum_of_del n (i + 1) else sum_of_del n (i + 1)

let d n = sum_of_del n 1

let rec sum_of_pairs maxn n = 
  match n with
  | n when n = (maxn + 1) -> 0
  | _ -> let dn = d n in
    if d (dn) = n && dn != n then n + sum_of_pairs maxn (n + 1) else sum_of_pairs maxn (n + 1)
