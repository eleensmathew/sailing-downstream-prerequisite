
let num_string = read_line();; (* input line *)
let rec get_list (num_string:string)(num_list: int list) : int list=(*convert the string into int list format*)
  match num_string with
  | "" -> List.rev num_list
  | h when String.length h > 0 ->
    let num = int_of_string (String.make 1 h.[0]) in
    get_list (String.sub h 1 (String.length h - 1)) (num::num_list)
  | _ -> num_list;;

let num_list = get_list num_string [];;

if (List.length num_list) mod 10 != 0 then(* check if list length is a multiple of 10*)
  failwith "list length is not multiple of 10";;

let counter = ref 0;;
let rec remove_elements_positions_multiple (num_list: int list) :int list =(* remove the element whose position is a multiple of 2 or 3*)
  counter := !counter + 1;
  match num_list with
  | [] -> []
  | h::t -> 
    if !counter mod 2 = 0 then remove_elements_positions_multiple t 
    else if !counter mod 3 = 0 then remove_elements_positions_multiple t
    else h::(remove_elements_positions_multiple t)
;;

let rec print_list (num_list: int list) : unit =(* print list *)
  match num_list with
  | [] -> ()
  | h::t -> print_int h; print_string " "; print_list t;;

let num_list = remove_elements_positions_multiple num_list;;
print_list num_list;;



