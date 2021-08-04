class Appointment < ApplicationRecord
    belongs_to :patient 
    belongs_to :doctor
    
    def appt_time 
        self.appointment_datetime.strftime("%B %-d, %Y at %H:%M")
    end

    def patient_name
        self.patient.name
    end 

    def doc_name
        self.doctor.name
    end

end
