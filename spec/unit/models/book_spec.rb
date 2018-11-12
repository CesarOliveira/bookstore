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
end
