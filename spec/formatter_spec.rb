require "spec_helper"
require "rbfmt/formatter"

describe Rbfmt::Formatter do
  fixtures = Dir.glob File.join(File.expand_path(File.dirname(__FILE__)), "fixtures", "**", "*.rb")
  formatted_fixtures = fixtures.select { |f| f[/.+_formatted.rb/] }
  source_fixtures = fixtures - formatted_fixtures

  source_fixtures.each do |s|
    it "formats source in #{s}" do
      filename =  File.basename(s, ".rb")
      formatted = formatted_fixtures.detect { |f| f[/#{filename}_formatted.rb/] }
      fail "No formatted fixture for #{s}" unless formatted
      formatter = described_class.new(File.read(s))
      formatter.format.should == File.read(formatted).strip
    end
  end
end
