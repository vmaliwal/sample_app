require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get static_pages_home_path
      response.status.should be(200)
    end
  end
  
  describe "Home page" do
    it "Should have the content 'Sample App'" do
      visit '/static_pages/home'
      page.should have_content('Sample App')
    end
  end
  
  describe "GET Help Page" do
    it "should GET help page with status code of 200" do
      get static_pages_help_path
      response.status.should be(200)
    end
  end
  
  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
  end
  describe "About page" do

     it "should have the content 'About Us'" do
       visit '/static_pages/about'
       page.should have_content('About Us')
     end
   end
   
   describe "Contact page" do
     it "should have the content 'Contact'" do
       visit '/static_pages/contact'
       page.should have_selector('h1', :text => 'Contact')
     end
     
     # let (:title)  {"Ruby on Rails Tutorial Sample App "}
     it "should have title 'Contact Us'" do
       visit '/static_pages/contact'
       page.should have_selector('title', :text => "| Contact Us")
     end
     
     it "should not have a custom page title" do
       visit '/static_pages/home'
       page.should have_selector('title', :text => '| Home')
     end    
   end
end
