require 'digest'

module Latex2Image
  class Latex
    attr_reader :formule, :file

    def initialize(formule)
      @formule = formule
      @file = write_file
    end

    def to_tex
      %{
        \\documentclass[fleqn]{article}
        \\DeclareMathSizes{20}{20}{20}{20}
        \\usepackage{amssymb,amsmath,bm}
        \\usepackage[latin1]{inputenc}
        \\begin{document}
        \\thispagestyle{empty}
        \\begin{equation*}
        #{@formule}
        \\end{equation*}
        \\end{document}
      }
    end

    private

    def write_file
      file = Tempfile.new([file_name, '.tex'])
      file.write to_tex
      file.close

      file
    end

    def file_name
      md5 = Digest::MD5.new
      md5.update @formule
      md5.hexdigest
    end
  end
end
