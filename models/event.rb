class Event
  attr_accessor :name, :event_type, :max_number_people, :date

  def initialize(attributes = {})
    @name = attributes[:name]
    @event_type = attributes[:event_type]
    @max_number_people = attributes[:max_number_people]
    @date = attributes[:date]
  end



end

# e = Event.new(name: "Great event", event_type: 'Festival', max_number_people: "5000", date: '2020-12-01') 

# p e.max_number_people
# e.max_number_people = '2000'
# p e.max_number_people
