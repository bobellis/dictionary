require ('rspec')
require ('word')
require ('definition')

describe(Word) do

  before do
    Word.clear()
  end
  
    describe('#save') do
      it('will save a new word object into the array of words') do
        test_word = Word.new('test')
        test_word.save()
        expect(Word.all()).to(eq([test_word]))
      end
    end
    describe('#spelling') do
      it('will return the spelling property of a word') do
        test_word = Word.new('test')
        test_word.save()
        expect(test_word.spelling()).to(eq('test'))
      end
    end
    describe('get_definitions') do
      it('will return an array of definitions associated with a word') do
        test_word = Word.new('test')
        test_word.save()
        test_definition = Def.new('this is a test')
        test_word.add_definition(test_definition)
        expect(test_word.get_definitions()).to(eq([test_definition]))
      end
    end
    describe('.find') do
      it('will return a word by id') do
        test_word = Word.new('test')
        test_word.save()
        expect(Word.find(1)).to(eq(test_word))
      end
    end

end

describe (Def) do
    describe('#def_details') do
      it('will return the details of a definition') do
        test_definition = Def.new('this is a test')
        expect(test_definition.def_details()).to(eq('this is a test'))
      end
    end
end
