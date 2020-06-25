class User
  attr_accessor :admin, :name, :password, :age, :can_drive, :is_working

  def initialize(attributes = {})
    @admin = attributes[:admin] || false
    @name = attributes[:name]
    @password = attributes[:password]
    @age = attributes[:age]
    @can_drive = attributes[:can_drive]
    @is_working = attributes[:is_working]
  end

  def manage_user_attributes(user, attribute, new_value)
    if @admin
      case attribute
      when 'age'
        user.age = new_value
      when 'can_drive'
        user.can_drive = new_value
      when 'is_working'
        user.is_working = new_value
      end
    end
  end

  def manage_event_attributes(event, attribute, new_value)
    if @admin
      case attribute
      when 'name'
        event.name = new_value
      when 'event_type'
        event.event_type = new_value
      when 'max_number_people'
        event.max_number_people = new_value
      when 'date'
        event.date = new_value
      end
    end
  end

end
