open Printf;;

let range lo hi = 
  List.init (hi - lo + 1) (fun x -> x + lo);;

let rec print_list lista = 
  List.iter (fun x -> printf "%d " x) lista;
  printf "\n";;

print_list (range 1 10);;
print_list (range 2 5);;