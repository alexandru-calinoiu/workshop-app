require "rom/struct"

module Blog
  module Admin
    module Entities
      class Article < ROM::Struct
        attribute :title, Types::Title
      end
    end
  end
end
