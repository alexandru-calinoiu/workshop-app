require "rom/struct"
require_relative "author"

module Blog
  module Admin
    module Entities
      class Article < ROM::Struct
        constructor_type :schema

        attribute :title, Types::Title
        attribute :author, Author
      end
    end
  end
end
