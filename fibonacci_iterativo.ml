open Printf;;
  let rec fibAux a b n =
    match n with
      | 1 -> [b]
      | _ -> b :: (fibAux b (a+b) (n-1));;
    
let fib x =
  match x with
    | _ when (x <= 0) -> []
    | _ -> 1 :: (fibAux 1 1 x);;



fib 20
|> List.iter (fun x -> printf "%d " x);;