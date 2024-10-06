let rec seq_gen k n acc = List.init (n - k + 1) (fun i -> k + i)
let is_div n x = n mod x = 0
let d n = 
  seq_gen 1 (n / 2 + 1) []
  |> List.filter (is_div n)
  |> (List.fold_left (+) 0)

let is_good n = d( d n ) = n && n != d(n)

let sum_of_pairs n = 
  seq_gen 1 10000 []
  |> List.filter is_good
  |> (List.fold_left (+) 0)

let() = print_int(sum_of_pairs 10000)
