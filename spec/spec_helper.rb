class LexerMock
  attr_accessor :tokens

  def initialize(tokens)
    @tokens = tokens
  end

  def next_token
    @tokens.shift
  end
end
