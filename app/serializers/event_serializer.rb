class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :start_time, :end_time, :attendees, :desc, :image_tag

  def image_tag
    "<img class='media-object' src='https://s3.amazonaws.com/mytinerary_images/medium/#{object.id}/#{object.image_file_name}'/>"

  end

end
