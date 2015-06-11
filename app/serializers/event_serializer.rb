class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :start_time, :end_time, :attendees, :desc, :image_tag

  def image_tag
    if object.image_file_name
      "<img class='media-object' src='https://s3.amazonaws.com/mytinerary_images/medium/#{object.id}/#{object.image_file_name}'/>"
    else
      "<span></span>"
    end
  end

  # create virtual attributes to format date and times???
end
