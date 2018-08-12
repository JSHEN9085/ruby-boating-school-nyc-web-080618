class Instructor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student, boating_test)
    BoatingTest.all.select do |boatingtest|
      if boatingtest.student == student && boatingtest.boating_test == boating_test && boatingtest.test_status == "passed"
      end
    end
  end

  def self.fail_student(student, boating_test)
    BoatingTest.all.select do |boatingtest|
      if boatingtest.student == student && boatingtest.boating_test == boating_test && boatingtest.test_status == "failed"
      end
    end
  end

  def self.student_grade_percentage(student)
    test_student = BoatingTest.all.select do |boatingtest|
      boatingtest.student == student
    end
    passed = test_student.each do |boatingtest|
      boatingtest.test_status == "passed"
    end
    failed = test_student.each do |boatingtest|
      boatingtest.test_status == "failed"
    end
    passed.length.to_f / failed.length
  end

end #end of class
