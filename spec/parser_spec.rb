require 'parser'

describe Parser do
  before do
    @lexer = Lexer.new
    @lexer.scan_setup("hello\nworld")
    @parser = Parser.new(@lexer)
  end

  it "should work" do
    @parser.parse
  end
end
