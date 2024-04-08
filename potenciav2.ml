open Printf;;
let power base exp =
  List.init exp (fun _ -> base)
  |> List.fold_left ( * ) 1;;

List.init 10 (succ)
|> List.map (fun x -> power x 2)
|> List.iter (fun x -> printf "%d " x);;
printf "\n";;

List.init 10 (succ)
|> List.map (fun x -> power x 3)
|> List.iter (fun x -> printf "%d " x);;
printf "\n";;