require 'data_mapper'

class Peep
  include DataMapper::Resource

  property :id,           Serial
  property :content,      String
  property :created_at,   DateTime

  def time
    created_at.strftime("%H:%M:%S - %d/%m/%y")
  end

end