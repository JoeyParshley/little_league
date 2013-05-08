require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Little League Team Manager'" do
      visit '/static_pages/home'
      page.should  have_selector('h1', :text => 'Little League Team Manager | ')
    end

    it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => 'Little League Team Manager | Home')
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should  have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => 'Little League Team Manager | Help')
    end
  end

  describe "About page" do
    it "should show the content 'About Us'" do
      visit '/static_pages/about'
      page.should  have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => 'Little League Team Manager | About Us')
    end
  end
end