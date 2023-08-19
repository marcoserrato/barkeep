class AddUserFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :user_favorites do |t|
      t.bigint :recipe_id, null: false
      t.bigint :user_id, null: false
    end
  end
end
