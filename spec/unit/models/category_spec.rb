require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'fields' do
    it do
      is_expected.to have_db_column(:name).of_type(:string)
      is_expected.to have_db_column(:description).of_type(:text)
      is_expected.to have_db_column(:likes).of_type(:integer)
    end
  end

  describe '#increase_like' do
    let(:likes) { Faker::Number.number(3).to_i }
    let!(:category) { create(:category, likes: likes) }

    subject do
      category.increase_like
      category.likes
    end

    it 'should increase the amount of likes' do
      is_expected.to eq likes + 1
    end
  end
end
