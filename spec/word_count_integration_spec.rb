require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count_spec' , {:type => :feature}) do
  it('it processes a sentence to see how many target words are in it.') do
    visit('/')
    fill_in("word_input", :with => "cat")
    fill_in("sentence_input", :with => "the cat and the hat ate with a cat under a mat")
    click_button('boom')
    expect(page).to have_content("2 cat")
  end
end
