class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise  :database_authenticatable, 
          :registerable,
          :recoverable, 
          :rememberable, 
          :trackable, 
          :validatable,
          :token_authenticatable,
          :omniauthable

  attr_accessible :role_ids, :as => :admin       
  
  attr_accessible :avatar, 
                  :firstname,
                  :lastname, 
                  :username,
                  :email, 
                  :password, 
                  :password_confirmation, 
                  :remember_me
  
  has_attached_file :avatar, { :styles => {:medium => "300 x 240", :thumb => "112x112#", :mini => '44x44#'}, :default_url => "/images/:style/missing.png" }

  validates_presence_of :email
  validates_uniqueness_of :email, :case_sensitive => false

  has_many :assets, dependent: :destroy
  
end
