open Printf;;

let cuenta (lista: int list) : int = 
  List.fold_left (fun acc _ -> acc + 1) 0 lista;;

print_string "El tamaño de la lista [";;
List.init 10 succ |> List.iter (printf " %i");;
print_string " ] es: ";;
List.init 10 (succ)
  |> cuenta
  |> printf "%i \n";;
