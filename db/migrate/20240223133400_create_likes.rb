class CreateLikes < ActiveRecord::Migration[7.1]
  def change
    create_table :icons_users, id: false do |t|
      t.references :user, null: false, foreign_key: true
      t.references :icon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
