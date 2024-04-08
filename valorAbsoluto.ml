open Printf;;

let absValue : int -> int = function
  | x when x < 0 -> -x
  | x -> x
;;

List.init 10 (fun x -> x - 5)
  |> List.iter (fun x -> Printf.printf "Valor absoluto de %d = %d\n" x (absValue x));;
