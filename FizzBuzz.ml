#use "topfind";;
#require "core";;
open Printf;;
(* open Core;; *)
(* #require "batteries";; *)
(* open Batteries;; *)

let fizz_buzz x = 
    match x with
    | _ when x mod 3 = 0 && x mod 5 = 0 -> "FizzBuzz"
    | _ when x mod 3 = 0 -> "Fizz"
    | _ when x mod 5 = 0 -> "Buzz"
    | _ -> string_of_int x;;

(* List.of_enum (1--100) (* De la libreria Batteries *)*)
(* List.init 100 (fun x -> x + 1) *)
(* List.init 100 ((+) 1) *)
(* List.init 100 succ *)
Core.List.range 1 100
  |> List.map fizz_buzz
  |> List.iter (fun cad -> printf "%s " cad);;

