require "blog/repository"

module Blog
  module Admin
    class ArticleRepo < Blog::Repository[:articles]
      def by_id(article_id)
        articles.by_pk(article_id).map_to(Entities::Article).one!
      end

      def listing
        articles.order { created_at.desc }.map_to(Entities::Article).to_a
      end
    end
  end
end
