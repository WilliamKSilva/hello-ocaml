let max_integer x y = if x > y then x else y;;

max_integer 2 3 |> print_int |> print_newline;;

let rec count_tr n acc =
  if n = 0 then acc else count_tr (n - 1) (acc + 1);;

count_tr 1000 0 |> print_int |> print_newline;;

(* *
-- normal recursion to tail recursion --
Change the function into a helper function. Add an extra argument: the accumulator, often named acc.
Write a new “main” version of the function that calls the helper. It passes the original base case’s return value as the initial value of the accumulator.
Change the helper function to return the accumulator in the base case.
Change the helper function’s recursive case. It now needs to do the extra work on the accumulator argument, before the recursive call. This is the only step that requires much ingenuity.  *)


let rec fac_aux n acc =
  if n = 0 then acc else fac_aux (n - 1) (n * acc);;

let fac_tr n =
  fac_aux n 1;;

fac_tr 5 |> print_int |> print_newline;;

let () = print_endline "Camels" in
print_endline "are cool!";;

let empty_lst lst =
  match lst with
  | [] -> "empty list my dude"
  | h :: _t -> h;;

let lst = ["william"; "kevin"] in empty_lst lst |> print_endline |> print_newline;;