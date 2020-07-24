# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser

  attr_accessor :name :csv

  def initialize(csv)
    @csv = csv
  end


  def parse
    csv.map do |email|
      email.split(", ")
    end
    email.uniq!
  end
end
