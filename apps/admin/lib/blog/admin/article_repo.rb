require "blog/repository"

module Blog
  module Admin
    class ArticleRepo < Blog::Repository[:articles]
      commands :create, update: :by_pk

      def by_id(article_id)
        articles.by_pk(article_id).map_to(Entities::Article).one!
      end

      def listing
        aggregate(:author)
          .order { created_at.desc }
          .map_to(Entities::Article)
      end
    end
  end
end
