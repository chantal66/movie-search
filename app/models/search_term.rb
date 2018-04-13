class SearchTerm < ApplicationRecord
  validates :value, presence: true
end
