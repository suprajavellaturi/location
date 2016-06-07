class Friend < ActiveRecord::Base
has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" } 
#validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/	
#validates_attachment :image, presence: true,
 # content_type: { content_type: "image/jpeg" },
  #size: { in: 0..10.kilobytes }
#validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/, /gif\Z/]
#do_not_validate_attachment_file_type :image
validates_attachment :image,
  :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }

validates :firstname, presence: true
validates :lastname , presence: true
validates :phone , presence: true
validates :email , presence: true
validates :imei , presence: true
has_many :friendships
has_many :users, :through => :friendships
has_and_belongs_to_many :groups
  #def self.search(search)
  #if search
  #  find(:all, :conditions => ['friends_related_group LIKE ?', "%#{search}%"])
  #else
  #end
#end
end
