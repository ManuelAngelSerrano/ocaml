(* Genera una lista de números que es la multiplicación de x e y, 
   con el mismo número de x e y 
   multEQ x y n = [x^0*y^0 x^1*y^1 x^2*y^2 ... x^n*y^n]
   multEQ 2 3 n = [1 6 36...] *)
open Printf;;
(* Es necesario hacer una función principal para poner el 1 inicial y darle la vuelta a la lista *)
(* Al construir la lista desde el último al primer número, la lista queda invertida *)
(* En cada llamada vamos añadiendo un valor nuevo a la lista y cuando n=0 devolvemos la lista *)
(* multEQaux :: Int -> Int -> Int -> [Int] *)
let rec multEQaux x y n l = 
  match n with
  | 0 -> l
  | _ ->   multEQaux x y (n-1) ((x*y) * (List.hd l) :: l);;

(* multEQ :: Int -> Int -> [Int] *)
let rec multEQ x y n = 
  List.rev (multEQaux x y (n-1) [1]);;

(* multEQ 2 3 3 = [1 6 36] *)
Printf.printf "multEQ 2 3 10 = [";;
multEQ 2 3 10
  |> List.iter (printf "%d ");;
Printf.printf "]\n";;

Printf.printf "multEQ 7 5 10 = [";;
multEQ 7 5 10
  |> List.iter (printf "%d ");;
Printf.printf "]\n";;