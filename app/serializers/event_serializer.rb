class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :location, :start_time, :end_time, :attendees, :desc

end
