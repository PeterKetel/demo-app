require 'spec_helper'

describe StaticPages::HomeController do
  describe 'Home page' do
    it "should have the content 'Demo App'" do
      visit '/static_pages/home'
      page.should have_content('Demo App')
    end
  end
end
