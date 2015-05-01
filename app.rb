require('./lib/definition')
require('./lib/word')
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end

get('/add_word') do
  erb(:add_word)
end
