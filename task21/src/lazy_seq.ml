let seq_gen k =
  Seq.unfold (fun x -> Some (x, x + 1)) k

let is_div n x = n mod x = 0
let d n = 
  seq_gen 1
  |> Seq.take (n / 2 + 1)
  |> List.of_seq
  |> List.filter (is_div n)
  |> (List.fold_left (+) 0)

let is_good n = d( d n ) = n && n != d(n)

let sum_of_pairs n = 
  seq_gen 1
  |> Seq.take n
  |> List.of_seq
  |> List.filter is_good
  |> (List.fold_left (+) 0)