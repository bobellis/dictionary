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

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @defs = @word.get_definitions()
  erb(:word)
end

post('/add_definition') do
  @word = Word.find(params.fetch('word_id').to_i())
  if params.fetch('new_definition') != ''
    @new_definition = Def.new(params.fetch('new_definition'))
    @word.add_definition(@new_definition)
  end
  @defs = @word.get_definitions()
  erb(:word)
end
