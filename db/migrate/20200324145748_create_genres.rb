class CreateGenres < ActiveRecord::Migration[6.0]
  def change
    create_table :genres do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.timestamps
    end
  end
end
