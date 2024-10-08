let rec sum_of_del n i acc = 
  match i with
  | i when i = n/2 + 1 -> acc
  | _ -> if n mod i = 0 then sum_of_del n (i + 1) (acc + i) else sum_of_del n (i + 1) acc

let d n = sum_of_del n 1

let rec sum_of_pairs maxn n acc = 
  match n with
  | n when n = (maxn + 1) -> acc
  | _ -> let dn = d n 0 in
    if d (dn) 0 = n && dn != n then sum_of_pairs maxn (n + 1) (acc + n) else sum_of_pairs maxn (n + 1) acc
