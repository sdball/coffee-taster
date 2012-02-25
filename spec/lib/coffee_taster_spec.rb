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
end
