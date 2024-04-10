open Printf;;

let str2list s = 
  (* str2list con funciones estandar de OCaml *)
  List.init (String.length s) (String.get s);;

let ordenar lista = 
  (* ordenar con funciones estandar de OCaml *)
  (* Usamos la función compare como ordenación estándar *)
  List.fast_sort (compare) lista;;

let rec agrupar' (lista: char list) (c:char) (acc:int) (max:char*int) : (char*int) = 
(* let rec agrupar' : char list -> char -> int -> (char,int) : (char, int) = 
  fun lista c acc max -> *)
  match lista with
  | [] -> max
  | x::xs -> 
    if x = c then
      (agrupar' xs x acc (c, acc+1))
    else
      if xs =[] then
        max
      else
        let h = List.hd xs in
        let t = List.tl xs in
        if acc > (snd max) then 
          agrupar' t h 1 (h, acc)
        else
          agrupar' t h 1 max;;

let maximo (lista: char list) : (char*int) = 
  match lista with
  | [] -> (' ', 0)
  | x::xs -> agrupar' xs x 1 (x,1);;

let masrepe (cadena: string) : (char*int)= 
  cadena
  |> str2list
  |> ordenar
  |> maximo;;


let r = masrepe "En un lugar de la Mancha de cuyo nombre no quiero acordarme" in
printf "(%c %d)" (fst r) (snd r);; 