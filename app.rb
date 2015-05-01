require('./lib/definition')
require('./lib/word')
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')


get('/') do
  @words = Word.all()
  erb(:index)
end

get('/add_word') do
  erb(:add_word)
end

post('/save_word') do
  @word_spelling = params.fetch('word_spelling')
  @word_def = params.fetch('word_def')
  word_new = Word.new(@word_spelling)
  word_new.save()
  new_def = Def.new(@word_def)
  word_new.add_definition(new_def)
  @words = Word.all()
  erb(:index)
end

get('/clear_dictionary') do
  Word.clear()
  erb(:index)
end
