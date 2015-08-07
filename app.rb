require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/coin_combo') do
  @word_count_value = params.fetch('word_input').word_count('sentence_input')
  erb(:change)
end
