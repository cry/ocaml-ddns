open! Core_kernel

module Stable = struct
  module V1 = struct
    type t =
      | Digitalocean of Digitalocean.Stable.V1.t
    [@@deriving variants, sexp]
  end
end

include Stable.V1
