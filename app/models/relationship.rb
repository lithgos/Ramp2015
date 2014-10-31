class Relationship < ActiveRecord::Base
  attr_accessible :companyblockcontractor, :favouritecontractor

  belongs_to :company
  belongs_to :contractor
end
