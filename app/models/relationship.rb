class Relationship < ActiveRecord::Base
  attr_accessible :companyblockcontractor, :favouritecontractor, :contractor_id, :company_id

  belongs_to :company
  belongs_to :contractor
  has_many :comments  
end
