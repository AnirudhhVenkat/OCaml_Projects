(* Command line text file statistics program *)
try
Calculator_functions.calculator
with
e ->
print_string "An error occurred: ";
print_string (Printexc.to_string e); 
print_newline ();
exit 1