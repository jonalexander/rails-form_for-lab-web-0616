

class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def new
    # need instance variable for FORM_FOR in new.html.erb
    #binding.pry
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  # create is the action referenced when using NEW form
  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end