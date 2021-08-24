class RemovedPostsIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    def up
      remove_column :posts, :posts_id
    end
    def down
      add_column :posts, :posts_id, :integer
    end
  end
end
