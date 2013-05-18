class Snippet < ActiveRecord::Base
  attr_accessible :description, :category_id, :code, :position

  belongs_to :category
  has_many :comments
end
