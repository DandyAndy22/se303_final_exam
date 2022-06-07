# These three functions suffer from the "Data Clump" smell.
# Cure the smell, and keep the test green and unchanged.
# Hint: Let the existing functions use the new code that you
#       write.

def word_count(beginning, middle, conclusion)
  beginning.split.size +
  middle.split.size +
  conclusion.split.size
end

def letter_count(beginning, middle, conclusion)
  Pieces.new(beginning, middle, conclusion).sum
end

def period_count(beginning, middle, conclusion)
  beginning.scan(/\./).size +
  middle.scan(/\./).size +
  conclusion.scan(/\./).size
end

class Pieces

  attr_accessor :beginning, :middle, :conclusion

  def initialize(beginning, middle, conclusion)
    @beginning = beginning
    @middle = middle
    @conclusion = conclusion
  end

  def sum
    beginning.size + middle.size + conclusion.size
  end

end
