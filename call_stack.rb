class User
  def initialize(name, email, age)
    @name = name
    @email = email
    @age = age
  end

  def save
    serialize_then_persist
  end

  private

    def serialize_then_persist
      hash = {
        name: @name,
        email: @email,
        age: @age
      }
      persist(hash)
    end

    def persist(hash)
      # debugging the call stack
      puts "-----------------"
      puts caller
    end
end

User.new("John", "jdoe@email.com", 25).save