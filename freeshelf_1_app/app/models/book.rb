class Book < ApplicationRecord
    attr_accessor :title, :author, :description, :language, :url

    validates :title, presence:true,
    length: { minimum: 1 }

    validates :url, presence:true
    
    validates :description, presence:true

    has_many :book_authors
    has_many :authors, through: :book_authors
    belongs_to :language, optional: true
    accepts_nested_attributes_for :authors
end
