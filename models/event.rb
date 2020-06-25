class Event
  attr_accessor :name, :event_type, :max_number_people, :date

  def initialize(attributes = {})
    @name = attributes[:name]
    @event_type = attributes[:event_type]
    @max_number_people = attributes[:max_number_people]
    @date = attributes[:date]
  end
end
