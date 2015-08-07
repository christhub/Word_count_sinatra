require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/word_count') do
  @word_count_value = params.fetch('word_input').word_count(params.fetch('sentence_input'))
  erb(:count)
end
