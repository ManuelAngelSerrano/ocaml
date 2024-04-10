open Printf;;

let str2list s = 
  (* str2list con funciones estandar de OCaml *)
  List.init (String.length s) (String.get s);;

let ordenar lista = 
  (* ordenar con funciones estandar de OCaml *)
  (* Usamos la función compare como ordenación estándar *)
  List.fast_sort (compare) lista;;

let rec agrupar lista = 
  match lista with
  | [] -> []
  | x::xs -> 
    let rec agrupar_aux lista x = 
      match lista with
      | [] -> []
      | y::ys -> 
        if x = y then
          y::(agrupar_aux ys x)
        else
          []
    in
    let agrupado = agrupar_aux xs x in
    if agrupado = [] then
      x::(agrupar xs)
    else
      x::agrupado::(agrupar xs);;

"En un lugar de la Mancha de cuyo nombre no quiero acordarme"
|> str2list 
|> ordenar
|> List.iter (printf "%c ");;
