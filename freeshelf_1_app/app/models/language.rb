class Language < ApplicationRecord
    attr_accessor :title, :author, :description, :language, :url
    has_many :books
    accepts_nested_attributes_for :books
end
