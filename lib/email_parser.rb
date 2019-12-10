# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  def initialize(email_addresses)
    @email_addresses = email_addresses
  end
  
  attr_accessor :email_addresses
  
  def parse
    split_emails = @email_addresses.split(/ |, |,/)
    split_emails = split_emails.uniq
    #split_emails.delete(" ")
  end
end
