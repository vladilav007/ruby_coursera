class Course < ApplicationRecord
    validates :title,  presence: true
    validates :title, :short_description, :language, :price, :level,  presence: true
    validates :description, presence: true, length: { :minimum => 5 }
    
    belongs_to :user

    extend FriendlyId
    friendly_id :title, use: :slugged
  
    def to_s
      title
    end
  
  
  end