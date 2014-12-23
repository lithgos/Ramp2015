class Comment < ActiveRecord::Base
  attr_accessible :content, :relationship_id
  belongs_to :relationship
end
