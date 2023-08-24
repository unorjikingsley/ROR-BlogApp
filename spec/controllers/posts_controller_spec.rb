require 'rails_helper'

RSpec.describe './posts', type: :request do
  describe PostsController do
    context 'GET index' do
      before(:example) do
        get '/users/1/posts'
      end

      it 'successful status response for index action' do
        expect(response).to be_successful
      end

      it 'rebders correct template' do
        expect(response).to render_template(:index)
      end

      it 'should render correct body placeholder text' do
        expect(response.body).to include('Here is the Home page for all posts by a user')
      end
    end

    context 'GET show action' do
      before(:example) do
        get '/users/1/posts/1'
      end

      it 'show action should have a successfull response' do
        expect(response).to have_http_status(:success)
      end

      it 'Render correct template for the show action' do
        expect(response).to render_template(:show)
      end

      it 'render correct placeholder' do
        expect(response.body).to include('Here is a specific posts by a user')
      end
    end
  end
end
