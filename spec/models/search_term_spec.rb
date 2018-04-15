require 'rails_helper'

RSpec.describe SearchTerm, type: :model do
  describe 'validation' do
    it 'is valid with a value' do
      value = SearchTerm.new(value: 'Iron man')
      expect(value).to be_valid
    end

    it 'is invalid without a value' do
      value = SearchTerm.new(value: nil)
      expect(value).to be_invalid
    end
  end
end
