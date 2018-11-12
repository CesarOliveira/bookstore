require 'rails_helper'

RSpec.describe LikeHelper, type: :helper do
  describe '#like_book' do

    let(:book_likes) { Faker::Number.number(3).to_i }
    let(:category_likes) { Faker::Number.number(3).to_i }
    let!(:category) { create(:category, likes: category_likes) }
    let!(:book) { create(:book, likes: book_likes, category: category) }

    subject do
      helper.like_book(book)
      book
    end

    it 'should increase the amount of likes in books' do
      expect(subject.likes).to eq book_likes + 1
    end

    it 'should increase the amount of likes in category' do
      expect(subject.category.likes).to eq category_likes + 1
    end
  end
end
