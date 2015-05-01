require('./lib/definition')
require('./lib/word')
require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('pry')

get('/') do
  erb(:index)
end
