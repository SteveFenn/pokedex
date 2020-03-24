class CreateSprites < ActiveRecord::Migration[6.0]
  def change
    create_table :sprites do |t|
      t.belongs_to :pokemon, null: false
      t.integer :perspective, default: 0, null: false
      t.string :url, null: false
      t.timestamps
    end
  end
end
