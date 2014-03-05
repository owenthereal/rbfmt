require "ripper"
require "sorcerer"

module Rbfmt
  class Formatter
    def initialize(source)
      @source = source
    end

    def format
      sexp = Ripper::SexpBuilder.new(@source).parse
      Sorcerer.source(sexp, :indent => true)
    end
  end
end
