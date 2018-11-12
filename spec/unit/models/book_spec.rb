require 'rails_helper'

RSpec.describe Book, type: :model do
  describe 'fields' do
    it do
      is_expected.to have_db_column(:name).of_type(:string)
      is_expected.to have_db_column(:description).of_type(:text)
      is_expected.to have_db_column(:likes).of_type(:integer)
      is_expected.to have_db_index(:category_id)
      is_expected.to have_db_column(:category_id).of_type(:integer)
    end
  end

	describe 'relationships' do
    it do
      is_expected.to belong_to(:category)
    end
  end

  describe '#increase_like' do
  	let(:likes) { Faker::Number.number(3).to_i }
    let!(:book) { create(:book, likes: likes) }

    subject do
    	book.increase_like 
    	book.likes
    end

    it 'should increase the amount of likes' do
      is_expected.to eq likes + 1
    end
  end
end
