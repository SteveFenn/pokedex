class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name, null: false
      t.string :slug, null: false
      t.timestamps
    end
  end
end
