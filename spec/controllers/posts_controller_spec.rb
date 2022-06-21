require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let(:my_post) { Post.create!(
    title: Faker::Fantasy::Tolkien.unique.character,
    body: Faker::Fantasy::Tolkien.unique.poem
  )}

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end

    it "assigns my_post to @posts" do
      get :index
      expect(assigns(:posts)).to eq([my_post])
    end
  end
end