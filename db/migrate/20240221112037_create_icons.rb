class CreateIcons < ActiveRecord::Migration[7.1]
  def change
    create_table :icons do |t|
      t.string :title
      t.text :image
      t.string :kind
      t.text :tags

      t.timestamps
    end
  end
end
