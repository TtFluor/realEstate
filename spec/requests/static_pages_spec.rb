require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the content 'Real Estate'" do
      visit '/static_pages/home'
      page.should have_content('Real Estate')
    end
    it "should have the title 'Real Estate | Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Real Estate | Home")
    end
  end

  describe "Help page" do

    it "should have the content 'Help'" do
      visit '/static_pages/help'
      page.should have_content('Help')
    end
    it "should have the title 'Real Estate | Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Real Estate | Help")
    end
  end

  describe "About page" do

    it "should have the content 'About'" do
      visit '/static_pages/about'
      page.should have_content('About')
    end
    it "should have the title 'Real Estate | About'" do
      visit '/static_pages/about'
      page.should have_selector('title',
                        :text => "Real Estate | About")
    end
  end
end