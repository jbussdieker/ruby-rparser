#!/usr/bin/env ruby
require 'rparser'

parser = Rparser::Parser.new
puts parser.scan_str(ARGF.read)
