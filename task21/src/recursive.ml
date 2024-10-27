let rec sum_of_del n i = 
  match i with
  | i when i = n/2 + 1 -> 0
  | _ -> 
    match n mod i with
    | 0 -> i + sum_of_del n (i + 1)
    | _ -> sum_of_del n (i + 1)

let d n = sum_of_del n 1

let rec sum_of_pairs maxn n = 
  match n with
  | n when n = (maxn + 1) -> 0
  | _ -> let dn = d n in
    match d dn = n, dn = n with
    | true, false -> n + sum_of_pairs maxn (n + 1)
    | _ -> sum_of_pairs maxn (n + 1)
