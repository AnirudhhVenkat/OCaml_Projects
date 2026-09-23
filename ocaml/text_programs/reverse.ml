(* Command line text file statistics program *)
try
begin match Sys.argv with [|_; in_filename; out_filename|] ->
Reverse_functions.reverse in_filename out_filename
| _ ->
    ()
end
with
e ->
print_string "An error occurred: ";
print_string (Printexc.to_string e); 
print_newline ();
exit 1