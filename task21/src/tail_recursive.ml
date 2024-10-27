let rec sum_of_del n i acc = 
  match i with
  | i when i = n/2 + 1 -> acc
  | _ -> 
    match n mod i with
    | 0 -> sum_of_del n (i + 1) (acc + i)
    | _ -> sum_of_del n (i + 1) acc

let d n = sum_of_del n 1

let rec sum_of_pairs maxn n acc = 
  match n with
  | n when n = (maxn + 1) -> acc
  | _ -> let dn = d n 0 in
    match d (dn) 0 = n, dn = n with
    | true, false -> sum_of_pairs maxn (n + 1) (acc + n)
    | _ -> sum_of_pairs maxn (n + 1) acc
