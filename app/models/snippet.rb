class Snippet < ActiveRecord::Base
  attr_accessible :description, :category_id, :code, :position

  has_many :comments
end
