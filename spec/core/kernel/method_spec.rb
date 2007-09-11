require File.dirname(__FILE__) + '/../../spec_helper'

describe "Kernel#method" do
  it "returns a method object for a valid method" do
    class KernelSpecs::Foo; def bar; 'done'; end; end
    KernelSpecs::Foo.new.method(:bar).class.should == Method
  end

  it "returns a method object for a valid singleton method" do
    class KernelSpecs::Foo; def self.bar; 'done'; end; end
    KernelSpecs::Foo.method(:bar).class.should == Method
  end
 
  it "raises a NameError for an invalid method name" do
    class KernelSpecs::Foo; def bar; 'done'; end; end
    should_raise(NameError) { KernelSpecs::Foo.new.method(:baz) }
  end

  it "raises a NameError for an invalid singleton method name" do
    class KernelSpecs::Foo; def self.bar; 'done'; end; end
    should_raise(NameError) { KernelSpecs::Foo.method(:baz) }
  end
end
