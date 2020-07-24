# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  @@email = []

  def initialize(email_addresses)
    @email_addresses = email_addresses
    self.class.all << email_addresses.parse
  end

  def self.all
    @@email
  end

  def parse
    split(', ')
  end
end
