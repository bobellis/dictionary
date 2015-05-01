require('capybara/rspec')
require('./app')
require('pry')

Capybara.app = Sinatra::Application

describe('The Dictionary website', :type => :feature) do
  describe('it loads the initial dictionary page', :type => :feature) do
    # visit('/')
    # expect(page).to(have_content('Welcome to the dictionary'))
  end
end
