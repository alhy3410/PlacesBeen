require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('a list of places to add to a unordered list', {:type => :feature})do
  it('will show a list of places that you have been to') do
    visit('/')
    fill_in('description', :with => "USA")
    click_button('Add Place')
    expect(page).to have_content("Your place has been added")
  end
end

describe('test the back function of the success page', {:type => :feature})do
  it('it will add a place, click the back link and display what was added') do
    visit('/')
    fill_in('description', :with => "Canada")
    click_button('Add Place')
    click_on('Back')
    expect(page).to have_content("Canada")
  end
end
