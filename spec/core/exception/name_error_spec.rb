require File.dirname(__FILE__) + '/../../spec_helper'

describe "NameError" do
  it "is a superclass of NoMethodError" do
    NameError.should_be_ancestor_of(NoMethodError)
  end
end

describe "NameError.new" do
  it "NameError.new should take optional name argument" do
    NameError.new("msg","name").name.should == "name"
  end  
end
