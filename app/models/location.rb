class Location < ActiveRecord::Base
  belongs_to :user
  validates :longitude, presence: true
  validates :latitude, presence: true
  #acts_as_gmappable :process_geocoding => false

def gmaps4rails_gmaps
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "#{self.longitude}, #{self.latitude}" 
   gmaps
end

 def gmaps4rails_infowindow
 "<h1>FirstName:#{user.firstname}</h1>
 <h1>LastName:#{user.lastname}</h1>"
  end

 def gmaps4rails_sidebar
 "Name:#{user.firstname}"
 end
  def self.search(search)
  if search
    find(:all, :conditions => ['latitude LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end

end
