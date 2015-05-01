class Word

@@words = []

  define_method(:initialize) do |spelling|
    @spelling = spelling
    @word_id = @@words.length + 1
    @definitions = []
  end

end
