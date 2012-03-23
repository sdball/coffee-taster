require 'coffee-script'

module CoffeeTaster
  def self.compile(javascript_code)
    begin
      javascript = CoffeeScript.compile javascript_code
    rescue => e
      javascript = "alert(\"CoffeeScript compilation error: #{e}\")"
    end
    javascript
  end
end
