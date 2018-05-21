class Doctor
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    self.new_appointment.collect { |songs| songs.appointment}
  end  
  
  def patients
  self.appointments.collect { || songs.appointment}
end