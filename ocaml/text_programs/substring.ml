(* Command line text file statistics program *)
try
begin match Sys.argv with [|_; filename; substring|] ->
Substring_functions.print_substring_lines filename substring
| _ ->
    ()
end
with
e ->
print_string "An error occurred: ";
print_string (Printexc.to_string e); 
print_newline ();
exit 1