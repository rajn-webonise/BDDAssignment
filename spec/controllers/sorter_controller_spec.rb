require 'rails_helper'

RSpec.describe SorterController, type: :controller do

  before(:each) do
   end

  describe "GET #sort" do
    it "returns http success" do
      get :sort
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #result" do
    it "returns http success" do
      get :result, {list: '6, 1, 2, 3, 5, 4', sorting_algorithm: 'Merge Sort'}
      expect(response).to have_http_status(:success)
    end
  end

  describe 'Redirect missing inputs back to #sort action' do

    it 'redirects when no input array passed' do
      get :result, {sorting_algorithm: 'Merge Sort'}
      expect(response).to  redirect_to('/')
    end
    it 'redirects when no sorting algorithm passed' do
      get :result, {list: '6, 1, 2, 3, 5, 4.001'}
      expect(response).to  redirect_to('/')
    end
    it 'redirects when neither values have been passed' do
      get :result, {}
      expect(response).to  redirect_to('/')
    end
  end

end
