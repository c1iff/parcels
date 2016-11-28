require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)


describe('cost of shipping', {:type => :feature}) do
  it('forwards total cost to output page') do
    visit('/')
    fill_in 'length', :with => 20 
    fill_in 'width', :with => 20 
    fill_in 'height', :with => 10 
    fill_in 'weight', :with => 5 
    fill_in 'distance', :with => 2500 
    choose 'speed2'
    click_button 'Submit!' 
    expect(page).to have_content 16.00 
  end
end
