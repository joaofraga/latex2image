module Latex2Image
  class Generator
    attr_reader :output

    def initialize(latex, output=nil)
      @latex = latex
      @output = File.new(output, 'w+') || Tempfile.new(%w(latex2image png))
    end

    def generate
      generate_dvi
      generate_png

      self
    end

    private

    def generate_dvi
      system "latex -output-directory=#{temp_dir} -interaction=nonstopmode #{@latex.file.path} .tex"
      @dvi_file = "#{temp_dir}/#{File.basename(@latex.file.path, '.tex')}.dvi"
    end

    def generate_png
      system "dvipng -q -T tight -bg transparent -D 300 #{@dvi_file} -o #{@output.path}"
    end

    def temp_dir
      @temp_dir ||= Dir.mktmpdir
    end
  end
end
