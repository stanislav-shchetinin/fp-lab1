let rec seq_gen k n acc =
  if k > n then acc else seq_gen (k + 1) n (k :: acc)

let is_div n x = n mod x = 0

let d n = 
  seq_gen 1 (n / 2 + 1) []
  |> List.filter (is_div n)
  |> (List.fold_left (+) 0)

let is_good n = d( d n ) = n && n != d(n)

let sum_of_pairs n = 
  seq_gen 1 n []
  |> List.filter is_good
  |> (List.fold_left (+) 0)

