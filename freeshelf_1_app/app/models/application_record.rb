class ApplicationRecord < ActiveRecord::Base
  attr_accessor :title, :author, :description, :language, :url
  self.abstract_class = true
end
