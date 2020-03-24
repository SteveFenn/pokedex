class AddExtraStatsToPokemons < ActiveRecord::Migration[6.0]
  def change
    add_column :pokemons, :height, :integer, default: 0, null: false
    add_column :pokemons, :weight, :integer, default: 0, null: false
    add_column :pokemons, :speed, :integer, default: 0, null: false
    add_column :pokemons, :special_attack, :integer, default: 0, null: false
    add_column :pokemons, :special_defence, :integer, default: 0, null: false
    add_column :pokemons, :defence, :integer, default: 0, null: false
    add_column :pokemons, :attack, :integer, default: 0, null: false
    add_column :pokemons, :hp, :integer, default: 0, null: false
  end
end
