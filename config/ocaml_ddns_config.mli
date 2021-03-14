open! Core_kernel
module Domain_name = Domain_name
module Dns_provider = Dns_provider

type t = private
  { refresh_interval : Time.Span.t
  ; domain_name : Domain_name.t
  ; dns_provider : Dns_provider.t
  }
  [@@deriving sexp_of]

val create
  : refresh_interval:Time.Span.t
  -> domain_name:Domain_name.t
  -> dns_provider:Dns_provider.t
  -> t

module Stable : sig
  module V1 : sig
    type nonrec t = t [@@deriving sexp]
  end
end
