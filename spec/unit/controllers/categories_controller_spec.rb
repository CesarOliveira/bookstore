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

  describe 'GET #show' do
    subject do
      response
    end

    context 'with existent category' do
      let!(:category) { create(:category) }
      let(:category_params) do
        { id: category.id }
      end

      before do
        get :show, params: category_params
      end

      it 'returns status ok' do
        is_expected.to have_http_status(:ok)
      end

      it 'matches the json schema' do
        is_expected.to match_response_schema('categories/show')
      end
    end

    context 'with inexistent category' do
      let(:category_params) do
        { id: Faker::Number.number(3).to_i }
      end

      before do
        get :show, params: category_params
      end

      subject do
        response
      end

      it 'returns status not_found' do
        is_expected.to have_http_status(:not_found)
      end
    end
  end

  describe 'POST #create' do
    subject do
      post :create, params: category_params
    end

    context 'with valid parameters' do
      let(:category_params) do
        {
          category:
            {
              name: Faker::Book.genre,
              description: Faker::Lorem.sentence(5)
            }
        }
      end

      xit 'returns status ok' do
        # is_expected.to have_http_status(:ok)
      end

      xit 'matches the json schema' do
        # is_expected.to match_response_schema('categories/show')
      end
    end

    context 'with invalid parameters' do
      it 'raises an Parameter Missing exception' do
        expect { post(:create, {}) }.to raise_error ActionController::ParameterMissing
      end
    end
  end
end
