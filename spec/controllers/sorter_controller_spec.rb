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
      get :result, {list: '6, 1, 2, 3, 5, 4', sorter: 'Merge Sort'}
      expect(response).to have_http_status(:success)
    end
  end


end
