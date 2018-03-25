require "dry-struct"
require "dry-types"

module Types
  include Dry::Types.module

  ArticleStatus = Strict::String.default("draft").enum("draft", "published")
  Title = Strict::String.constructor do |str|
    str ? str.strip.chomp : str
  end
end
