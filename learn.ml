print_string "Hello world";;
let x : int = 3110;;
print_int (5+5);;

if (5>3) then 5 else 3;;
if(5=5) then "this is true" else "this is false";;
if(2>1) then 2 else 1;;
if(2>1) then print_string "this is true" else  if (2>3) then print_string "this is false" else print_string "hello";;

let var=56;;

let calc(input: int) : int =
  input + 1;;

print_int (calc 5);;

let calc2(arg1:int)(arg2 :int): string =
  if (arg1 > arg2) then 
    let str="arg1 is greater than arg2" in (* in used for scope *)
    str
  else 
    let str="arg2 is greater than arg1" in
    str;; 
  
  
print_string (calc2 5 6);;


let is_xero(x: int) :string =
  match x with
  | 0 -> "zero"
  | _ ->"one";; (* _ for exhaustive *)

print_string (is_xero 1);;

let list1 = [1;2;3;4;5];;
let list2 :int list = [1;2;3;4;5];; (* declaring h=the var type *)
1::list1;; (* adding to the begining of list *)

let is_list_empty(l: int list) : string =
  match l with
  | [] -> "true"
  | _ -> "false";;

let y : int list = [1;3;6];;
let is_list_empty2(l: int list) : int=
  begin match l with
  | [] -> 1
  | h::t -> 0  (* h is the head and t is the tail *)
  end;;
  
print_int (is_list_empty2 y);;

let z : int list = [1;5;6;7];;
let rec length_of_list(l: int list) : int =
  begin match l with
  | [] -> 0
  | h::t -> 1 + length_of_list t (* add 1 + call function to tail of list*)
  end ;; (* recursive function *)

  print_int (length_of_list z);;


