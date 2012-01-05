require 'support/domain_object'

class TestObject < DomainObject
  attr_accessor :id, :name, :something
end

describe DomainObject do
  it "sets properties based on the constructor" do
    obj = TestObject.new :id => 5, :name => "Testing", :something => "else"
    obj.id.should == 5
    obj.name.should == "Testing"
    obj.something.should == "else"
  end
end
