require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  render_views

  before { request.accept = 'application/json' }

  describe 'GET #index' do
    let!(:category) { create(:category) }

    before do
      get :index, params: { category_id: category.id }
    end

    subject { response }

    it 'returns status ok' do
      is_expected.to have_http_status(:ok)
    end

    it 'matches the json schema' do
      is_expected.to match_response_schema('categories/index')
    end
  end
end