#use "topfind";;
open Printf;;
#require "batteries";;
open Batteries;;
let str2list s = 
  (* str2list con funciones estandar de OCaml *)
  List.init (String.length s) (String.get s);;

let str2list_enum s = 
  (* str2list con funciones de Batteries *)
  String.enum s 
  |> List.of_enum;;

let str2list_bat s=
  (* str2list con funciones de Batteries *)
  String.to_list s;;

"En un lugar de la Mancha de cuyo nombre no quiero acordarme" 
|> str2list 
|> List.iter (printf "%c ");;

"En un lugar de la Mancha de cuyo nombre no quiero acordarme" 
|> str2list_enum
|> List.iter (printf "%c ");;

"En un lugar de la Mancha de cuyo nombre no quiero acordarme" 
|> str2list_bat
|> List.iter (printf "%c ");;