class Parser
  token LINE NEWLINE
  rule
    document
      : 
      | lines
      ;
    lines
      : lines line
      | NEWLINE
      | line
      ;
    line
      : LINE
      | LINE NEWLINE
      ;
end
---- inner
  def initialize(tokenizer)
    @tokenizer = tokenizer
    super()
  end

  def parse
    do_parse
  end

  def next_token
    @tokenizer.next_token
  end
