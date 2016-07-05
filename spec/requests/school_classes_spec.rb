require 'rails_helper'

RSpec.describe "SchoolClasses", :type => :request do
  describe "GET /school_classes" do
    it "works! (now write some real specs)" do
      get school_classes_path
      expect(response.status).to be(200)
    end
  end
end
