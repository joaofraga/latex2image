module Latex2Image
  class Generator
    def initialize(latex, format="png", output=nil)
      @latex = latex
      @format = format if valid_format?(format)
      @output = output || Tempfile.new(@latex.file[:name])
    end

    private

    def valid_format?(format)
      Latex2Image::AVAILABLE_FORMATS.include?(format)
    end
  end
end
