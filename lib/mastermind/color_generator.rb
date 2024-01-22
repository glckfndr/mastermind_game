module ColorGenerator
  COLORS = %w[r g b y m o].freeze
  def get
    pattern = ''
    3.times { pattern += (COLORS[rand(COLORS.length)]) }
    pattern
  end
end
