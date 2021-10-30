let () = print_endline "Hello from OCaml on XP"

let _ = Sys.command "timeout 3"

let () = Sys.command "echo echo ok > hello.cmd"
         |> print_int
