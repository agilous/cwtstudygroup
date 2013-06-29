require "spec_helper"

describe StatesController do
  describe "GET #filter" do
    it "responds successfully with an HTTP 200 status code" do
      get :filter
      expect(response).to be_success
      expect(response.status).to eq(200)
    end

    it "renders the filter template" do
      get :filter
      expect(response).to render_template("filter")
    end

    it "returns states whose names match the substring parameter" do
      get :filter, substring: 'oh'

      expect(assigns(:matching_states)).to match_array(["Ohio"])
    end
  end
end