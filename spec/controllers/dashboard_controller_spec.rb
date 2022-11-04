require 'rails_helper'

RSpec.describe DashboardController do
  context "Dashboard Index Page" do
    it "RETURN 200 when user access page" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
