open! Core
open! Async

let command =
  Command.async_or_error
    ~summary:"ddns, now in ocaml"
    (let%map_open.Command () = return ()
     and config =
       flag
         "config"
         (required (Arg_type.Export.sexp_conv [%of_sexp: Ocaml_ddns_config.Stable.V1.t]))
         ~doc:"SEXP config to run"
     in
     fun () ->
       print_s ( [%sexp_of: Ocaml_ddns_config.t] config );
       (* TODO cry: implement this *)
       Deferred.Or_error.return ())
