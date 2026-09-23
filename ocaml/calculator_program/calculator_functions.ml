let rec calculate x = 
print_string "-------------------------";
print_newline ();
print_string "Current Result: ";
print_int x;
print_newline ();
print_string "Enter Operation (0 to stop): ";
let op = read_line () in
match op with
"0" -> print_newline (); print_string "Result: "; print_int x; print_newline ()
|_ -> 
print_newline ();
print_string "Enter Number: ";
let num = try int_of_string (read_line ()) 
with | Failure _ -> print_endline "Invalid input, defaulting to 0."; 0
in
print_newline ();
match op with 
"+" -> calculate (x + num)
|"-" -> calculate (x - num)
|"*" -> calculate (x * num)
|"/" -> if num = 0 then raise Division_by_zero else calculate (x / num)
|_ -> print_string "Invalid Operation"


let calculator = 
print_string "Enter Number: ";
let start = int_of_string(read_line ()) in
print_newline ();
calculate start