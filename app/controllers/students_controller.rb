class StudentsController < ApplicationController

  def index
    # all the instances of a class
    if params[:name]
      students = Student.select{|student| student.first_name.downcase == params[:name] || student.last_name.downcase == params[:name]}
    else
      students = Student.all
   end
    render json: students
  end
  
  def show
    student = Student.find(params[:id])
    render json: student
  end


end
