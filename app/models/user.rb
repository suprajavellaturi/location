class User < ActiveRecord::Base

    
    has_many :locations
    has_one :profile
    has_many :friendships
    has_many :friends, :through => :friendships

    #before_validation :ensure_login_has_a_value
  

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :firstname, :lastname, :phone, :imeino
end
