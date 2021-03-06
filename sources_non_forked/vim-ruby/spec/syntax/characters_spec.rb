require 'spec_helper'

describe "Syntax highlighting" do
  specify "whitespace character literals" do
    [
      '?\       ', # \f
      '?\       ', # \n
      '?\
       ', # \r
      '?\         ', # \s
      '?\	  ' # \t
    ].each do |c|
      assert_correct_highlighting c, '?..', 'rubyCharacter'
    end
  end
end
