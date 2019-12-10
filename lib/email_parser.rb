# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailAddressParser 
  attr_accessor :email_strings
  
  def initialize(email_strings)
    
    @email_strings=email_strings
    
  end
  
  def parse
    clean_strings = @email_strings.split.map { |email| email.gsub(/[\s,]/ ,"")}
    clean_strings.uniq
    
  end
end
