class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, 
         :confirmable
  
  has_many :courses

  def username
    self.email.split(/@/).first
  end

  def to_s
    email
  end
end
