class RemovedUserIdFromFavorites < ActiveRecord::Migration[5.2]
  def change
    def up
      remove_column :users, :users_id
    end
    def down
      add_column :users, :users_id, :integer
    end
  end
end
