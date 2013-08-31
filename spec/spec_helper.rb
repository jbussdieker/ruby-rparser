require 'parser'

class ParserMock < Parser
  attr_accessor :tokens

  def initialize(tokens)
    @tokens = tokens
  end

  def next_token
    @tokens.shift
  end

  def parse
    do_parse
  end
end
