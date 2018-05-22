class Book < ApplicationRecord
    validates :title, presence:true,
    length: { minimum: 1 }

    validates :url, presence:true
    
    validates :description, presence:true

    has_many :authors
    belongs_to :language
    accepts_nested_attributes_for :authors
end
