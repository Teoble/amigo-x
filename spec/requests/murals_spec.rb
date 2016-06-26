require 'rails_helper'

RSpec.describe "Murals", type: :request do
  describe "GET /murals" do
    it "works! (now write some real specs)" do
      get murals_path
      expect(response).to have_http_status(200)
    end
  end
end
