let seq_gen k n =
  Seq.unfold (fun state -> if state = n + 1 then None else Some (state, state + 1)) k

let is_div n x = n mod x = 0
let d n = 
  seq_gen 1 (n / 2 + 1)
  |> List.of_seq
  |> List.filter (is_div n)
  |> (List.fold_left (+) 0)

let is_good n = d( d n ) = n && n != d(n)

let sum_of_pairs n = 
  seq_gen 1 n
  |> List.of_seq
  |> List.filter is_good
  |> (List.fold_left (+) 0)