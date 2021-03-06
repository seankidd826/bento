require "rails_helper"

RSpec.describe Admin::OrdersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin/orders").to route_to("admin/orders#index")
    end

    it "routes to #new" do
      expect(:get => "/admin/orders/new").to route_to("admin/orders#new")
    end

    it "routes to #show" do
      expect(:get => "/admin/orders/1").to route_to("admin/orders#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin/orders/1/edit").to route_to("admin/orders#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin/orders").to route_to("admin/orders#create")
    end

    it "routes to #update" do
      expect(:put => "/admin/orders/1").to route_to("admin/orders#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin/orders/1").to route_to("admin/orders#destroy", :id => "1")
    end

  end
end
