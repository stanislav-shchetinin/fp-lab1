let d n = 
  let res = ref 0 in
  for x = 1 to n / 2 + 1 do
    if n mod x = 0 then
      res := !res + x
  done;
  !res

let sum_of_pairs n = 
  let res = ref 0 in
  for x = 1 to n do
    if d(d(x)) = x && d(x) != x then
      res := !res + x
  done;
  !res

let () = Printf.printf "%d\n" (sum_of_pairs 10000)