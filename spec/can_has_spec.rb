require "can_has"
require "ostruct"

describe CanHas do
  it "should be totally fucking awesome" do
    struct = OpenStruct.new
    struct.can_has?(:cheezburger).should be_true
  end

  it "should maybe let you do something" do
    struct = OpenStruct.new
    struct.should_receive(:rand).and_return(rand(2))
    struct.can_has?(:bukkit)
  end

  it "should always let you do something" do
    struct = OpenStruct.new
    struct.should_receive(:rand).with(2).and_return(1)
    struct.can_has?(:bukkit).should be_true
  end

  it "should maybe let you do something if you pass a fucking block" do
    struct = OpenStruct.new
    struct.can_has?(:bukkit) { false }.should be_false
  end

  it "should always let you do something if you pass a fucking block" do
    struct = OpenStruct.new
    struct.can_has?(:bukkit) { true }.should be_true
  end

end