class Student
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(boating_test, instructor, test_status)
    BoatingTest.new(boating_test, self, instructor, test_status)
  end

  def self.find_student(name)
    Student.all.find do |student|
      if student.name = name
      end
    end
  end

end #end of class
