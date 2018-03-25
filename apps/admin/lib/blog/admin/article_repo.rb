require "blog/repository"
require_relative "entities"

module Blog
  module Admin
    class ArticleRepo < Blog::Repository[:articles]
      commands :create, update: :by_pk

      struct_namespace Entities

      def by_id(article_id)
        articles.by_pk(article_id).one!
      end

      def listing
        articles.order_by_created_at
      end

      private

      def articles
        aggregate(:author)
      end
    end
  end
end
