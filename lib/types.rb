require "dry-struct"
require "dry-types"

module Types
  include Dry::Types.module

  ArticleStatus = Types::Strict::String.default('draft').enum('draft', 'published')
  Title = Types::Strict::String.constructor do |str|
    str ? str.strip.chomp : str
  end
end
