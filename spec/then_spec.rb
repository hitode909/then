require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Then" do
  it "success" do
    res = []
    [1,2,3,3].then{ |list|
      res << list.length
    }.uniq.then{ |list|
      res << list.length
    }
    res.should == [4, 3]
  end
end
