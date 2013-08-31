require 'spec_helper'
require 'parser'

describe Parser do
  def parser_test(example)
    @lexer = LexerMock.new(example)
    @parser = Parser.new(@lexer)
    @parser.parse
    @lexer.tokens.length.should eql(0)
  end

  it "should work" do
    example = []
    parser_test(example)
  end

  it "should work with newline" do
    example = [[:NEWLINE, "\n"]]
    parser_test(example)
  end

  it "should work with line" do
    example = [[:LINE, "hello"]]
    parser_test(example)
  end

  it "should work with lines" do
    example = [[:LINE, "hello"], [:NEWLINE, "\n"], [:LINE, "world!"]]
    parser_test(example)
  end
end
