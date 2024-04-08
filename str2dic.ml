(*Dada una cadena convertir a un diccionario con la longitud de cada palabra*)
open Printf;;

"En un lugar de la Mancha de cuyo nombre no quiero acordarme"
|> String.split_on_char ' ' (* Separo las palabras con los ' '*)
|> List.map (fun x -> (x, String.length x)) (* Hago el diccionario con un map asignando a cada palabra una tupla con su longitud *)
|> List.iter (fun (x, y) -> printf "%s: %d\n" x y);; (* Imprimo el diccionario, iterando por cada tupla *)
