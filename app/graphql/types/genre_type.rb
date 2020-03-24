module Types
  class GenreType < BaseObject
    field :slug, ID, null: false
    field :name, String, null: false
  end
end
