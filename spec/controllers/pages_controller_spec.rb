require 'spec_helper'

describe PagesController do
  render_views
  
  before(:each) do
    @base_title = "Ruby on Rails 3 Tutorial Sample App"
    @base_header = "Sample App"
  end

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
    
    it "shoule be the right title" do
      get 'home'
      response.should have_selector("title", :content => @base_title + " | Home")
      response.should have_selector("h1", :content => @base_header + " - Home")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end
    
    it "should be the right title" do
      get 'contact'
      response.should have_selector("title", :content => @base_title + " | Contact")
      response.should have_selector("h1", :content => @base_header + " - Contact")
    end
  end
  
  describe "GET 'about'" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end
    
    it "should be the right title" do
      get "about"
      response.should have_selector("title", :content => @base_title + " | About")
      response.should have_selector("h1", :content => @base_header + " - About")
    end
  end
  
  describe "GET 'help'" do
    it "should be successful" do
      get 'help'
      response.should be_success
    end
    
    it "should be the right title" do
      get "help"
      response.should have_selector("title", :content => @base_title + " | Help")
      response.should have_selector("h1", :content => @base_header + " - Help")
    end
  end

end
