(* Genera una lista de números que es la multiplicación de x e y, 
   con el mismo número de x e y 
   multEQ x y n = [x^0*y^0 x^1*y^1 x^2*y^2 ... x^n*y^n]
   multEQ 2 3 n = [1 6 36...]*)
open Printf;;

(* pow :: Int -> Int -> Int *)
(* Generamos una lista de n números de tal manera que repetimos exp_veces la base
   y luego reducimos la lista multiplicando todos los números de la lista *)
let pow base exp =
  List.init exp (fun _ -> base)
  |> List.fold_left ( * ) 1;;

(* multEQ :: Int -> Int -> [Int] *)
let multEQ x y n =
  List.init n (fun i -> pow x i * pow y i);;

(* multEQ 2 3 3 = [1 6 36] *)
Printf.printf "multEQ 2 3 10 = [";;
multEQ 2 3 10
  |> List.iter (Printf.printf "%d ");;
Printf.printf "]\n";;

Printf.printf "multEQ 7 5 10 = [";;
multEQ 7 5 10
  |> List.iter (printf "%d ");;
Printf.printf "]\n";;