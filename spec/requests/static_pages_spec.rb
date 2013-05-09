require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Little League Team Manager'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => "Little League Team Manager")
    end

    it "should have the base title" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => "Little League Team Manager")
    end

    it "should not have a custom page title" do
      visit '/static_pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should  have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => "Little League Team Manager | Help")
    end
  end

  describe "About page" do
    it "should show the content 'About Us'" do
      visit '/static_pages/about'
      page.should  have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => "Little League Team Manager | About Us")
    end
  end

  describe "Contact us page" do
    it "should show the content 'Contact Us'" do
      visit '/static_pages/contact_us'
      page.should have_selector('h1', :text => 'Contact Us')
    end

    it "should have the title 'Contact us'" do
      visit '/static_pages/contact_us'
      page.should have_selector('title', :text => "Little League Team Manager | Contact Us")
    end
  end
end