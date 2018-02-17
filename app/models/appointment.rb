class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def datetime_humanized
    self.appointment_datetime.strftime("%B %d, %Y at %H:%M")
  end
end
