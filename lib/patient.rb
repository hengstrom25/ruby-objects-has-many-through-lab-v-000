class Patient
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    Appointment.new(doctor, date, self)
  end
  
  def appointments
    Appointment.all.select { |appts| appts.patient == self}
  end
  
  def doctors
    self.appointments.collect { |appts| appts.doctor}
  end
end