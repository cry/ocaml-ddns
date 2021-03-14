open! Core_kernel

type t =
   | Digitalocean of Digitalocean.t
  [@@deriving variants, sexp_of]

module Stable : sig
  module V1 : sig
    type nonrec t = t [@@deriving sexp]
  end
end

