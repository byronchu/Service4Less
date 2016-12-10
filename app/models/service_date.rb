class ServiceDate < ActiveRecord::Base
  belongs_to :service
  
  validates :service, presence: true
end
