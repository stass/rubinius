require File.dirname(__FILE__) + '/../../spec_helper'

describe "RangeError" do
  it "is a superclass of FloatDomainError" do
    RangeError.should_be_ancestor_of(FloatDomainError)
  end
end
