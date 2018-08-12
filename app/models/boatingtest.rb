class BoatingTest

attr_reader :student, :instructor
attr_accessor :boating_test, :test_status

@@all = []

def initialize(boating_test, student, instructor, test_status)
  @boating_test = boating_test
  @student = student
  @instructor = instructor
  @test_status = test_status
  @@all << self
end

def self.all
  @@all
end

end #end of class
