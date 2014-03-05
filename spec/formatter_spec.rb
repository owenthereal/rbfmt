require "spec_helper"
require "rbfmt/formatter"

describe Rbfmt::Formatter do
  it "formats source" do
    formatter = described_class.new('def hello(world) "Hello, #{world}!"; end')
    formatted_source = <<-EOS
def hello(world)
  "Hello, \#\{world\}!"
end
EOS
    formatter.format.should == formatted_source
  end
end
