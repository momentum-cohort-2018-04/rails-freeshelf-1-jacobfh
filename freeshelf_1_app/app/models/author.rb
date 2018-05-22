class Author < ApplicationRecord
    attr_accessor :title, :author, :description, :language, :url
    has_many :book_authors
    has_many :books, through: :book_authors
    
end
