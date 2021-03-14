open! Core_kernel

module Api_token : sig
  type t

  val of_string : string -> t
end

type t = private
  { api_token : Api_token.t
  }
  [@@deriving sexp_of]

module Stable : sig
  module V1 : sig
    type nonrec t = t [@@deriving sexp]
  end
end
