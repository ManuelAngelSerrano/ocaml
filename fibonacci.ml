let muestra_zipped ((x,y): int*int) = 
  Printf.printf "Fibonacci of %d = %d\n" x y;;

let rec fib x =
  match x with
    | _ when (x < 0) -> 0
    | 0 -> 1
    | 1 -> 1
    | _ -> fib (x-1) + fib(x-2);;

(* Genero un rango de 1 a n *)
(* Aplico la funcion fib a todos los elementos de la lista *)
(* Genero una lista zip de cada indice con su numero de fibonacci *)
(* Muestro cada uno de las tuplas del zip *)

let rango = List.init 10 succ;;

rango
 |> List.map fib
 |> List.combine rango
 |> List.iter muestra_zipped;;
