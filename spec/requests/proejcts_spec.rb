require 'rails_helper'

RSpec.describe "Proejcts", type: :request do
  describe "GET index,  type: :projects" do
    it "renders the index template" do
      get '/projects'
      expect(response).to render_template('index')
    end
  end
  describe "GET new,  type: :projects" do
    it "renders the new template" do
      get '/projects/new'
      expect(response).to render_template('new')
    end
  end
end
