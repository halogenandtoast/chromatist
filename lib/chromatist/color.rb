class Chromatist::Color
  def initialize
    @red = 255.0
    @green = 204.0
    @blue = 0.0
  end

  # Calculate luminance according to Rec. 709 for high definition screens.
  # (http://en.wikipedia.org/wiki/Luma_%28video%29)
  def objective_luminance
    (0.2126 * @red + 0.7152 * @green + 0.0722 * @blue) / 255
  end

  # Calculate perceived luminence according to Rec. 601 for standard definition
  # screens. (http://en.wikipedia.org/wiki/Luma_%28video%29)
  def perceived_luminance
    (0.299 * @red + 0.587 * @green + 0.114 * @blue) / 255
  end
end
