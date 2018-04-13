class SearchTerm < ApplicationRecord
  validates :value, presence: true

  def self.value_count
    group(:value).count
  end
end
