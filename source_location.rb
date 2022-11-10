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
      puts "-----------------1"
      puts method(:serialize_then_persist).source_location
    end
  end
  
  User.new("John", "jdoe@email.com", 25).save
  puts "-----------------2"
  puts User.instance_method(:persist).source_location