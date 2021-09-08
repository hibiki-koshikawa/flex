class CreateTreasures < ActiveRecord::Migration[5.2]
  def change
    create_table :treasures do |t|
      t.integer :user_id
      t.integer :showcase_id
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
