# frozen_string_literal: true
require './lib/amazon_menu'
describe "Amazon Web" do
  context "Navigate to Electronics Menu" do
    it "Lands on the Page with Electronic Menu" do
      AmazonMenu.setup
      AmazonMenu.test_click_menu
      value = AmazonMenu.getmenuvalue
      expect(value).to eql("Tv, Audio & Cameras")
      AmazonMenu.teardown
    end
  end
end

