require ('rspec')
require ('word')
require ('definition')

describe(Word) do
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

end

describe (Def) do
    describe('#def_details') do
      it('will return the details of a definition') do
        test_definition = Def.new('this is a test')
        expect(test_definition.def_details()).to(eq('this is a test'))
      end
    end
end
