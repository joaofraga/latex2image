require "latex2image/available_formats"
require "latex2image/generator"
require "latex2image/latex"
require "latex2image/version"

module Latex2Image
  def self.convert(formule, output=nil)
    latex = Latex.new(formule)

    Generator.new(latex, output).generate
  end
end
