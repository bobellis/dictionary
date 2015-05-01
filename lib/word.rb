class Word

@@words = []

  define_method(:initialize) do |spelling|
    @spelling = spelling
    @word_id = @@words.length + 1
    @definitions = []
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_singleton_method(:all) do
    @@words
  end

end
