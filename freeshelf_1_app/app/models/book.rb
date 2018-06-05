class Book < ApplicationRecord
    validates :title, presence: true

    validates :url, presence:true
    
    validates :description, presence:true,
    length: {minimum: 5, maximum: 250},
    on: :create,
    allow_nil: false

    has_many :book_authors
    has_many :authors, through: :book_authors
    belongs_to :language, optional: true
    accepts_nested_attributes_for :authors
end
