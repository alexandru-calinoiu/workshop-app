require "types"

module Blog
  module Entities
    class Article < Dry::Struct
      attribute :status, Types::ArticleStatus
      attribute :title, Types::Strict::String
      attribute :published_at, Types::DateTime
    end
  end
end