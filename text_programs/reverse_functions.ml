
let rec iter f l =
match l with
[] -> ()
|h::t -> f h; iter f t

let entry_of_channel ch =
   let line = input_line ch in
   line

let rec list_of_channel ch =
  try
   let e = entry_of_channel ch in 
      e :: list_of_channel ch
   with 
      End_of_file -> []


let list_of_file filename = 
    let ch = open_in filename in
       let list = list_of_channel ch in
    close_in ch;
    list

let entry_to_channel ch x =
output_string ch x;
output_char ch '\n'

let list_to_channel ch s =
iter (entry_to_channel ch) s


let list_to_file filename l =
let ch = open_out filename in
list_to_channel ch l;
close_out ch

let reverse in_filename out_filename = 
let l = List.rev (list_of_file in_filename) in 
list_to_file out_filename l
