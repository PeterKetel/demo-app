require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the StaticPages::HomeHelper. For example:
#
describe StaticPages::HomeHelper do
  describe 'Home page' do
    it "should have the content 'Demp App'" do
      visit '/static_pages/home'
      page.should have_content('Demo-App')
    end
  end
end
