class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

  has_many :user_locations
  has_many :locations, :through => :user_locations

  attr_accessor :login
  #resourcify

  validates :username, :uniqueness => { :case_sensitive => false }, presence: true
  validates :email, uniqueness: true, presence: true

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase}]).first
    else
      where(conditions).first
    end
  end


end
