open Printf;;
let rec power base exp =
  match exp with
  | 0 -> 1
  | x when x mod 2 = 0 -> 
    let n = power base (exp/2) in
    n * n
  | _ -> 
    let n = power base (exp/2) in
    base * n * n;;
  (* | _ -> base * power base (exp - 1);; *)

List.init 10 (succ)
|> List.map (fun x -> power x 2)
|> List.iter (fun x -> printf "%d " x);;
printf "\n";;

List.init 10 (succ)
|> List.map (fun x -> power x 3)
|> List.iter (fun x -> printf "%d " x);;
printf "\n";;