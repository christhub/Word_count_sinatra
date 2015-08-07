require('word_count')
require('rspec')

describe('String#anagram') do
  # it('takes a word and returns the target word') do
  #   expect("bog".word_count()).to(eq("bog"))
  #   end
  # it('takes a string and outputs an array') do
  #   expect("bog".word_count("The bog had a frog and a log")).to(eq(["The", "bog", "had", "a", "frog", "and", "a", "log"]))
  #   end
  # it('takes a word and finds it in a string') do
  #   expect("bog".word_count("The bog had a frog and a log")).to(eq(True))
  #   end
  it('it returns the number of times a word is found in a string, if it''s once') do
    expect("bog".word_count("The bog had a frog and a log")).to(eq("There is 1 bog found in that sentence."))
    end

  it('it returns the number of times a word is found in a string, if it''s twice') do
    expect("cog".word_count("The bog had a frog and a log")).to(eq("There were none found."))
    end

  it('it returns the number of times a word is found in a string, if it''s never') do
    expect("bog".word_count("The bog had a frog and a log from the other bog and smog.")).to(eq("There are 2 bog found in that sentence."))
    end
end
