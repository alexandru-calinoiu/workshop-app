require "rom/struct"
require "types"

module Blog
  module Admin
    module Entities
      class Author < Dry::Struct
        attribute :name, Types::Strict::String
      end
    end
  end
end