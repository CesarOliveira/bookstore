require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'fields' do
    it do
      is_expected.to have_db_column(:name).of_type(:string)
      is_expected.to have_db_column(:description).of_type(:text)
      is_expected.to have_db_column(:likes).of_type(:integer)
    end
  end
end
