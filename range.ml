open Printf;;

let rec range lo hi = 
  if lo > hi then [] 
  else lo :: range (lo + 1) hi;;

let rec print_list l = 
  match l with
  | [] -> printf "\n"
  | h::t -> printf "%d " h; print_list t;;

let l = range 2 5;;
print_list l;;