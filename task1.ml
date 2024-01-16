(* ocaml program to implement stack and check if string is parantheses balanced *)
type 'a stack = 'a list
let push (s:'a stack) (e:'a) : 'a stack = e::s

let pop (s:'a stack) : 'a stack = 
  match s with
  | [] -> failwith "Empty stack"
  | _::t -> t

let top (s:'a stack) : 'a =
  match s with
  | [] -> failwith "Empty stack"
  | h::_ -> h

let rec is_string_balanced (s:string) : bool =
  let rec check_balance (s:char list) (stack:char stack) : bool =
    match s with
    | [] -> if stack = [] then true else false
    | h::t -> if h = '(' then check_balance t (push stack h) 
              else if h = ')' then check_balance t (pop stack) 
              else check_balance t stack in
  check_balance (List.of_seq (String.to_seq s)) [] ;;

let disp_balanced (s:string) : unit =
  if is_string_balanced s then print_string("string is balanced")
  else print_string("string is not balanced");;

disp_balanced "((()))";;
print_newline ();
disp_balanced "(((()))";;