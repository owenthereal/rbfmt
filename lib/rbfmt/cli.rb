require "rbfmt/formatter"

module Rbfmt
  class CLI
    attr_reader :args

    def initialize(args)
      @args = args
    end

    def start
      dir = if args.empty?
              File.join("**", "*.rb")
            else
              File.join(args.first, "**", "*.rb")
            end

      Dir[dir].each do |file|
        source = File.read(file)
        formatted_source = Rbfmt::Formatter.new(source).format
        unless source == formatted_source
          File.write(file, formatted_source)
          puts file
        end
      end
    end

    def self.start
      new(ARGV).start
    end
  end
end
