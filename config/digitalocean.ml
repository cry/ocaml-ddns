open! Core_kernel.Core_kernel_stable

module Stable = struct
  module V1 = struct
    module Api_token = struct
      include Core_kernel.String_id.Make
          (struct
            let module_name = "Ocaml_ddns_config.Digitalocean.Api_token"
          end)
          ()
    end

    type t =
      { api_token : Api_token.t }
      [@@deriving sexp]
  end
end

include Stable.V1


