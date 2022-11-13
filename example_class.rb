require 'debug'

class User
  def initialize(fname:, lname:, email:)
    @fname = fname
    @lname = lname
    @email = email
  end

  def full_name
    @lname + " " + @lname
  end

  def email
    binding.b
    full_name + "<#{@email}>"
  end
end

User.new(fname: "John", lname: "Doe", email: "jdoe@email.com").email