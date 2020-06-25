require_relative '../models/user'
require_relative '../models/event'

RSpec.describe User do
  let(:user) { User.new(name: 'My User', password: "password", age: "18", can_drive: true, is_working: false) }
  let(:admin) { User.new(admin: true, name: 'My Admin User', password: "password", age: "30", can_drive: true, is_working: true) }
  let(:event1) { Event.new(name: "Great event", event_type: 'Festival', max_number_people: "5000", date: '2020-12-01') }

  it 'should manage the global User custom attibutes (Admin)' do
    expect(user.age).to eq('18')
    expect(user.can_drive).to eq(true)
    expect(user.is_working).to eq(false)

    admin.manage_user_attributes(user, "age", "24")
    admin.manage_user_attributes(user, "can_drive", true)
    admin.manage_user_attributes(user, "is_working", true)

    expect(user.age).to eq('24')
    expect(user.can_drive).to eq(true)
    expect(user.is_working).to eq(true)
  end

  it 'should manages a specific Event\'s custom attributes (Admin)' do
    expect(event1.name).to eq('Great event')
    expect(event1.event_type).to eq('Festival')
    expect(event1.max_number_people).to eq('5000')
    expect(event1.date).to eq('2020-12-01')

    admin.manage_event_attributes(event1, 'name', 'Super great event')
    admin.manage_event_attributes(event1, 'event_type', 'Concert')
    admin.manage_event_attributes(event1, 'max_number_people', '2000')
    admin.manage_event_attributes(event1, 'date', '2020-07-20')

    expect(event1.name).to eq('Super great event')
    expect(event1.event_type).to eq('Concert')
    expect(event1.max_number_people).to eq('2000')
    expect(event1.date).to eq('2020-07-20')
  end

  # it 'makes a custom attribute optional/required on the User profile (Admin)' do
    
  # end

  # it 'makes a custom attribute optional/required on the User signup form (Admin)' do

  # end

  # it 'makes a custom attribute optional/required on a specific Event Registration form (Admin)' do
    
  # end

  # it 'fills in a custom attribute on his profile (User)' do
    
  # end

  # it 'fills in a custom attribute on the signup form (User)' do
    
  # end

  # it 'fills in a custom attribute on an Event Registration form (User)' do
    
  # end

  # it 'reads his custom attributes on his profile (User)' do
    
  # end
  
  # it 'reads an Event registration’s custom attributes (Admin)' do
    
  # end
end
