require "dry/validation"
require "types"

module Blog
  module Admin
    module Articles
      FormSchema = Dry::Validation.Form do
        required(:title).filled
        required(:status).value(included_in?: Types::ArticleStatus.values)
        required(:published_at).maybe(:date?)

        rule(published: [:published_at, :status]) do |published_at, status|
          status.eql?(Types::ArticleStatus["published"]).then(published_at.filled?)
        end
      end
    end
  end
end
