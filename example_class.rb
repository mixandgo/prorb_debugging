require 'pry'

class User
  def initialize(fname:, lname:, email:)
    binding.pry
    @fname = fname
    @lname = lname
    @email = email
  end

  def full_name
    @lname + " " + @lname
  end

  def email
    full_name + "<#{@email}>"
  end
end

User.new(fname: "John", lname: "Doe", email: "jdoe@email.com")