open Printf;;

let rec mylast (lista: 'a list) : 'a =
  match lista with
  | [] -> failwith "Empty list"
  | [x] -> x
  | _ :: tail -> mylast tail;;

printf "El último elemento de [1,2,3,4] es %d\n" (mylast [1;2;3;4]);;
printf "El último elemento de [a,b,c,d] es %c\n" (mylast ['a';'b';'c';'d']);;