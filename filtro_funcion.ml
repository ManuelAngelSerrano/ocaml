open Printf;;

let f x = (x mod 2 = 0);;

let rec filtrar f l = match l with
  | [] -> []
  | h::t -> if f h 
    then h::(filtrar f t) 
    else filtrar f t;;


List.init 10 (succ)
  |>filtrar f
  |>List.iter (fun x -> printf "%d " x);; 
