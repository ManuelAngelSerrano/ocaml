(* Genera una lista de números que es la multiplicación de x e y, 
   con el mismo número de x e y 
   multEQ x y n = [x^0*y^0 x^1*y^1 x^2*y^2 ... x^n*y^n]
   multEQ 2 3 n = [1 6 36...]*)
open Printf;;

(* pow :: Int -> Int -> Int *)
(* la exponenciacion solo está disponible para floats, por lo que se convierte a float base y exp
    y luego a entero el resultado*)
let pow base exp = int_of_float (float_of_int base ** float_of_int exp);;

(* multEQ :: Int -> Int -> [Int] *)
let rec multEQ x y n =
  let xs : int list = List.init n (pow x) in
  let ys : int list = List.init n (pow y) in
  List.map2 (fun x y -> x*y) xs ys;;

(* multEQ 2 3 3 = [1 6 36] *)
Printf.printf "multEQ 2 3 10 = [";;
multEQ 2 3 10
  |> List.iter (Printf.printf "%d ");;
Printf.printf "]\n";;

Printf.printf "multEQ 7 5 10 = [";;
multEQ 7 5 10
  |> List.iter (printf "%d ");;
Printf.printf "]\n";;
(* List.init 4 (pow 3)
|> List.iter (printf "%d ");; *)