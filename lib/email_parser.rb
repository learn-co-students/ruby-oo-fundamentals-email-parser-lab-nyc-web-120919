# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  
  def initialize(email_address)
    @emails = email_address
  end
  
  def parse
    emails = @emails.split(',')
    emails = emails.map{|x| x.split(' ')}
    emails = emails.flatten()
    emails.each_with_index do |value, index|
      found_index = emails.rindex(value)
      if(found_index != index)
        emails.delete_at(found_index)
      end
    end
    return emails
  end
end