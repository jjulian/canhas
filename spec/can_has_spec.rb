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

end