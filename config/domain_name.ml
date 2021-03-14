open! Core_kernel

include String_id.Make_with_validate_without_pretty_printer (struct
    let module_name = "Ocaml_ddns_config.Domain_name"

    (* TODO: write actual validation someday*)
    let validate = const (Or_error.return ())
  end)
    ()
