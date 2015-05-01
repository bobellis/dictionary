require ('rspec')
require ('word')
require ('definition')

describe(Word) do
    describe('#save') do
      it('will save a new word object into the array of words') do
        test_word = Word.new('test')
        test_word.save()
        expect(Word.all()).to(eq(test_word))
    end
  end
end

describe ('definition') do


end
