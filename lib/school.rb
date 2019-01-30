# code here!
require "pry"
class School
  attr_accessor :name, :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] ? @roster[grade] << student : @roster[grade] = [student]
  end

  def grade(grade_number)
    @roster[grade_number]
  end

  def sort
    @roster.sort_by { |k,v| k }.to_h
    @roster.each_pair { |k,v| @roster[k] = v.sort }
  end

end
