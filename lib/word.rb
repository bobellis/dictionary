class Word

@@words = []
attr_reader(:spelling, :word_id)


  define_method(:initialize) do |spelling|
    @spelling = spelling
    @word_id = @@words.length + 1
    @definitions = []
  end

  define_method(:save) do
    @@words.push(self)
  end

  define_method(:add_definition) do |definition|
    @definitions.push(definition)
  end

  define_method(:get_definitions) do
    @definitions
  end

  define_singleton_method(:all) do
    @@words
  end

  define_singleton_method(:clear) do
    @@words = []
  end

end
