class Comment < ActiveRecord::Base
  attr_accessible :content, :snippet_id

  belongs_to :snippet
end
