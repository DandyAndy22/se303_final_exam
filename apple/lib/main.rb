# This code suffers from the "Long Function" smell.
# To cure it, apply "extract function".

def story
  middle = ""
  5.downto(1) do
    add_new_line(middle)
  end
  conclusion = "And that was it."
  first() + middle + conclusion
end

def first
  "Mr. Dursley was the director of a firm called Grunnings, which made drills."
end

def middle
  ""
end

def add_new_line(middle)
  middle << "\n"
end
