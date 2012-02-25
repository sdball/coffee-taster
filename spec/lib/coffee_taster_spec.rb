require 'spec_helper'

describe CoffeeTaster do
  it "should compile empty CoffeeScript into JavaScript" do
    coffeescript = CoffeeScript.compile('')
    coffeescript = trim_whitespace(coffeescript)
    coffeescript.should == "(function(){}).call(this);"
  end
  it "should compile valid CoffeeScript into JavaScript" do
    coffeescript = CoffeeTaster.compile('alert("hi")')
    coffeescript = trim_whitespace(coffeescript)
    coffeescript.should == '(function(){alert("hi");}).call(this);'
  end
  it "should compile invalid CoffeeScript into error highlighting JavaScript" do
    coffeescript = CoffeeTaster.compile('alert("hi"')
    coffeescript.should =~ /alert\("CoffeeScript compilation error: SyntaxError: missing \) on line 1/
  end
end
