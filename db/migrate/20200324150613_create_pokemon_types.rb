class CreatePokemonTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemon_types do |t|
      t.belongs_to :pokemon, null: false
      t.belongs_to :genre, null: false
      t.timestamps
    end
  end
end
