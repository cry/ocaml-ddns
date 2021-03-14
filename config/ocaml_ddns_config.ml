open! Core_kernel.Core_kernel_stable

module Stable = struct
  module V1 = struct
    type t =
      { refresh_interval : Time.Span.V3.t
      ; domain_name : Domain_name.Stable.V1.t
      ; dns_provider : Dns_provider.Stable.V1.t
      }
      [@@deriving fields, sexp]
  end
end

include Stable.V1
open! Core_kernel
module Domain_name = Domain_name
module Dns_provider = Dns_provider

let create = Fields.create
