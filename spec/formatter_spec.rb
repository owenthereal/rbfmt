require "spec_helper"
require "rbfmt/formatter"

describe Rbfmt::Formatter do
  it "formats source" do
    fixtures = Dir.glob File.join(File.expand_path(File.dirname(__FILE__)), "fixtures", "**", "*.rb")
    formatted_fixtures = fixtures.select { |f| f[/.+_formatted.rb/] }
    source_fixtures = fixtures - formatted_fixtures

    source_fixtures.each do |s|
      filename =  File.basename(s, ".rb")
      formatted = formatted_fixtures.detect { |f| f[/#{filename}_formatted.rb/] }
      fail "No formatted fixture for #{s}" unless formatted
      described_class.new(File.read(s)).format.should == File.read(formatted)
    end
  end
end
