class Code < ApplicationRecord
  def self.search(query)
    @codes = Code.where('postal_code LIKE ?', "%#{query}%")
  end
end
