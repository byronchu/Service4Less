class Service < ActiveRecord::Base
  belongs_to :user
  has_one :category
 
  
  has_many :service_dates
end
