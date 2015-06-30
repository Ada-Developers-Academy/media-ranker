require 'spec_helper'

describe HomeController, type: :controller  do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      expect(response).to be_success
    end
    
    it "assigns top stuff" do
      get :index
      expect(assigns[:books]).to_not  be_nil
      expect(assigns[:movies]).to_not be_nil
      expect(assigns[:albums]).to_not be_nil
    end
  end

end
