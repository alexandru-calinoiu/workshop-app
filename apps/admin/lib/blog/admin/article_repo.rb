require 'blog/entities/article'

module Blog
  module Admin
    class ArticleRepo
      def create(params)
        Blog::Entities::Article.new(params)
      end
    end
  end
end