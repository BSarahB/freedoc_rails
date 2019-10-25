class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments
	belongs_to :city,  optional: true 
	belongs_to :city, optional: true
	has_many :speciality, through: :deal_with_its
end
