class Parser
macro
  LINE        .+
  NEWLINE     \n
rule
  {LINE}       {[:LINE, text]}
  {NEWLINE}    {[:NEWLINE, text]}
end
