module Persistence
  module Relations
    class Articles < ROM::Relation[:sql]
      schema :articles, infer: true do
        associations do
          belongs_to :author
        end
      end

      def published
        by_status("published")
      end

      def order_by_created_at
        order { created_at.desc }
      end
    end
  end
end
