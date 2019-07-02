class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :client
  belongs_to :person

  validate :valid_appointment
  validates :client_id, presence: true
  validates :person_id, presence: true

  def valid_appointment
  	if self.from_date < self.to_date
	  	if Appointment.where('to_date >= ? AND from_date <= ? AND person_id = ?', self.from_date, self.to_date, self.person_id).count > 0
	  		errors.add(:person_id, "#{self.person.try(:name) || 'Person'} is busy")
	  	end
	else
	  	errors.add(:from_date, "Invalid Appointment Dates")
	end
  end
end
