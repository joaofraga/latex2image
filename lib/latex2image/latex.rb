require 'digest'

module Latex2Image
  class Latex
    def initialize(formule)
      @formule = formule
    end

    def to_tex
      %{
        \\begin{displaymath}
        #{@formule}
        \\end{displaymath}
      }
    end

    def to_file

    end

    private

    def file
      {
        name: file_name
      }
    end

    def file_name
      md5 = Digest::MD5.new
      md5.update @formule
      md5.hexdigest
    end
  end
end
