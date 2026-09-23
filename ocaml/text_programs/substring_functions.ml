
let rec iter n f l =
match l with
[] -> ()
|h::t -> f n h; iter (n+1) f t

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


let substring_check substring num line = begin
if String.find_first ~sub: substring ~start:0 line = None then () else print_int (num+1); end; print_newline ()


let print_substring_lines filename substring = 
let list = list_of_file filename in 
iter 0 (substring_check substring) list