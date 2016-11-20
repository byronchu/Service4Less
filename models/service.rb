class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
 
  
  has_many :service_dates
end
