require 'coffee_taster'

def trim_whitespace(s)
  s.gsub("/n", '').gsub(/\s/, '')
end
