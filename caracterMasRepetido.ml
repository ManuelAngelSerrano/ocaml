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

let rec calcularMaximo (lista: char list) (acc:char*int) (max:char*int) : (char*int) = 
  match lista with
  | [] -> max
  | x::xs -> 
    if x = fst acc then
      (calcularMaximo xs (x, (snd acc)+1) max)
    else
      if (snd acc) > (snd max) then
        calcularMaximo xs (x, 1) acc
      else
        calcularMaximo xs (x, 1) max;;

let maximo (lista: char list) : (char*int) = 
  match lista with
  | [] -> (' ', 0)
  | x::xs -> calcularMaximo xs (x,1) (x,1);;

let masrepe (cadena: string) : (char*int)= 
  cadena
  |> str2list
  |> quitarBlancos
  |> ordenar
  |> maximo;;


printf "El caracter que más veces se repite es: ";;
let res = masrepe "En un lugar de la Mancha de cuyo nombre no quiero acordarme" in
printf "(%c %d)" (fst res) (snd res);; 