open Printf;;

let str2list s = 
  (* str2list con funciones estandar de OCaml *)
  List.init (String.length s) (String.get s);;

let quitarBlancos s = 
  (* quitarBlancos con funciones estandar de OCaml *)
  (* Quitamos (filter) los espacios en blanco *)
  List.filter (fun x -> x != ' ') s;;

let ordenar lista = 
  (* ordenar con funciones estandar de OCaml *)
  (* Usamos la función compare como ordenación estándar *)
  List.fast_sort (compare) lista;;

let rec calcularMaximo (lista: char list) (act:char*int) (acc:(char*int) list) : (char*int) list = 
  match lista with
  | [] -> act::acc
  | x::xs -> 
    if x = fst act then
      (calcularMaximo xs (x, (snd act)+1) acc)
    else
      calcularMaximo xs (x, 1) (act::acc);;

let maximo (lista: char list) : (char*int) list = 
  match lista with
  | [] -> [(' ', 0)]
  | x::xs -> calcularMaximo xs (x,1) [];;

let sumaChar (cadena: string) : (char*int) list = 
  cadena
  |> String.lowercase_ascii
  |> str2list
  |> quitarBlancos
  |> ordenar
  |> maximo
  |> List.rev;;


(* let res = sumaChar "En un lugar de la Mancha de cuyo nombre no quiero acordarme" in
printf "(%c %d)" (fst res) (snd res);;  *)
"En un lugar de la Mancha de cuyo nombre no quiero acordarme"
|> sumaChar
|> List.iter (fun x -> printf "(%c %d)" (fst x) (snd x));;