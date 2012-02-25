require 'coffee-script'

module CoffeeTaster
  def self.compile(javascript_code)
    CoffeeScript.compile javascript_code
  end
end
