require('rspec')
require('word_frequency')
require('pry')

describe('String#word_frequency') do
  # it('Takes a phrase as input and breaks it into an array of individual words') do
  # expect(("Table salt is usually a white salt")).word_frequency.to(eq(["Table", "salt", "is", "usually", "a", "white", "salt"]))
  # end
  # it('Returns true if a searched word is found in the phrase') do
  #   expect(("Table salt is usually a white salt").word_frequency("salt")).to(eq(true))
  # end
  it('Returns a message if a searched word is not found in the phrase') do
    expect(("Table salt is usually a white salt").word_frequency("dog")).to(eq("That word is not found in the phrase"))
  end
  it('Returns the number of times the searched word is found in the phrase') do
    expect(("Table salt is usually a white salt").word_frequency("salt")).to(eq(2))
  end
end
