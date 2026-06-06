module Letters
  LETTERS = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z].freeze

  def lowercase
    LETTERS.dup
  end

  def uppercase
    LETTERS.map(&:upcase)
  end
end
