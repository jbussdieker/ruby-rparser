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
