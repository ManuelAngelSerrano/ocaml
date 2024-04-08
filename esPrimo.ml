open Printf;;

(* let rec sinDiv n m = (m * m > n) || ((n mod m != 0 && (sinDiv n (m+1))));; *)
(* let esPrimo' n = (n>=2) && (sinDiv n 2);; *)
let rec esPrimo n =
  let rec sinDivisores (m) = 
    m * m > n || (n mod m != 0 && sinDivisores (m + 1))
  in
    n >= 2 && sinDivisores 2;; 

List.init 100 (succ)
|> List.filter (esPrimo)
|> List.iter (printf "%d ");;
printf "\n";;