open Printf;;

let str2list s = 
  (* str2list con funciones estandar de OCaml *)
  (* Convertimos a lista de caracteres y quitamos (filter) los espacios en blanco *)
  List.init (String.length s) (String.get s)
  |> List.filter (fun x -> x != ' ');;

let ordenar lista = 
  (* ordenar con funciones estandar de OCaml *)
  (* Usamos la función compare como ordenación estándar *)
  List.fast_sort (compare) lista;;

let rec agrupar' (lista: char list) (acc:char*int) (max:char*int) : (char*int) = 
(* let rec agrupar' : char list -> char -> int -> (char,int) : (char, int) = 
  fun lista c acc max -> *)
  match lista with
  | [] -> max
  | x::xs -> 
    if x = fst acc then
      (agrupar' xs (x, (snd acc)+1) max)
    else
      if (snd acc) > (snd max) then
        agrupar' xs (x, 1) acc
      else
        agrupar' xs (x, 1) max;;

let maximo (lista: char list) : (char*int) = 
  match lista with
  | [] -> (' ', 0)
  | x::xs -> agrupar' xs (x,1) (x,1);;

let masrepe (cadena: string) : (char*int)= 
  cadena
  |> str2list
  |> ordenar
  |> maximo;;


let res = masrepe "En un lugar de la Mancha de cuyo nombre no quiero acordarme" in
printf "(%c %d)" (fst res) (snd res);; 