class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.friendly_find_by(id)
    find(id)
  rescue ActiveRecord::RecordNotFound
    nil
  end
end
