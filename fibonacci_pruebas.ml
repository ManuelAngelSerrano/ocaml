let muestra x y =
  (* print_string ("Fib of " ^ string_of_int (x) ^ " = " ^ string_of_int (y) ^ "\n");; *)
  Printf.printf "Fib of %s = %s\n" (string_of_int x) (string_of_int y);;
  

let muestra_zipped ((x,y): int*int) = 
  Printf.printf "Fib of %s = %s\n" (string_of_int x) (string_of_int y);;

let rec fib x =
  match x with
    | _ when (x < 0) -> 0
    | 0 -> 1
    | 1 -> 1
    | _ -> fib (x-1) + fib(x-2);;

(* for i = -1 to 10 do *)
  (* print_string ("Finding fib of " ^ string_of_int (i) ^ " = " ^ string_of_int (fib i) ^ "\n");  *)
(* done; *)

(* Genero un rango de 1 a 10 y le aplico la funcion fib a cada elemento *)
let num = List.init 10 (fun x -> x + 1);;
(*Aplico la funcion fib a todos los elementos de la lista*)
let fibs = List.map fib num;;
List.iter2 muestra num fibs;;

(*Genero una lista zip de cada indice con su numero de fibonacci*)
let zipped_fibs = List.combine num fibs;;
List.iter muestra_zipped zipped_fibs ;;

List.init 10 (fun x -> x + 1)
 |> List.map fib
 |> List.iter (fun x -> Printf.printf "%d \n" x);;

List.init 10 (fun x -> x + 1)
 |> List.map fib
 |> List.combine (List.init 10 (fun x -> x + 1))
 |> List.iter muestra_zipped;;

num
 |> List.map fib
 |> List.combine num
 |> List.iter muestra_zipped;;