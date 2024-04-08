(* Genera una lista de números que es la multiplicación de x e y, 
   con el mismo número de x e y 
   multEQ x y n = [x^0*y^0 x^1*y^1 x^2*y^2 ... x^n*y^n]
   multEQ 2 3 n = [1 6 36...]*)
#use "topfind";;
open Printf;;
#require "batteries";;
open Batteries;;

(* multEQ :: Int -> Int -> [Int] *)
let rec multEQ x y n = 
  match n with
  | 0 -> [1] (* x^0 * y^0 = 1*)
  | _ ->  List.append (multEQ x y (n-1)) [(Int.pow x n) * (Int.pow y n)];;


(* multEQ 2 3 3 = [1 6 36] *)
Printf.printf "multEQ 2 3 10 = [";;
multEQ 2 3 10
  |> List.iter (printf "%d ");;
Printf.printf "]\n";;

Printf.printf "multEQ 7 5 10 = [";;
multEQ 7 5 10
  |> List.iter (printf "%d ");;
Printf.printf "]\n";;