require "ruby2ruby"
require "ruby_parser"

module Rbfmt
  class Formatter
    def initialize(ruby)
      @ruby = ruby
    end

    def format
      parser    = RubyParser.new
      ruby2ruby = Ruby2Ruby.new
      sexp      = parser.process(@ruby)

      ruby2ruby.process(sexp)
    end
  end
end
