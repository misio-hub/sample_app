require 'spec_helper'

describe PagesController do
  render_views
  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end


#    it "should have right title" do
#      get 'home'
#      response.should have_selector("title") do |content|
#        content.should have_selector(:content => "Ruby test | home")
#      end
#    end
    it "should have right title" do
      get 'home'
      content.should have_tag("title",
	:content => "Ruby test | home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
  end


  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
  end

end
