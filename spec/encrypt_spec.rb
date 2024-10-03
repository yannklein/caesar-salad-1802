require_relative "../encrypt"

# Test that "THE QUICK BROWN FOX" 
# return "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"

# Test that the original string and the returned one
# have the same length

# Test that it returns a String

# Test if we pass nil it returns an ""

# puts encrypt("THE QUICK BROWN FOX") == "QEB NRFZH YOLTK CLU"

describe "#encrypt" do
  it "returns QEB NRFZH YOLTK CLU when passed THE QUICK BROWN FOX" do
    expected = "QEB NRFZH YOLTK CLU"
    actual = encrypt("THE QUICK BROWN FOX")
    expect(actual).to eq(expected)
  end

  it "returns a string of equal length as the passed one" do
    expected = "YANN".length
    actual = encrypt("YANN").length
    expect(actual).to eq(expected)
  end
end