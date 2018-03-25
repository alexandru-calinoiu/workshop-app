require "blog/operation"
require "blog/admin/import"
require_relative "form_schema"

module Blog
  module Admin
    module Articles
      class Create < Blog::Operation
        include Import["article_repo"]

        def call(params)
          validation = FormSchema.(params)

          if validation.success?
            Right(@article_repo.create(params))
          else
            Left(validation)
          end
        end
      end
    end
  end
end
