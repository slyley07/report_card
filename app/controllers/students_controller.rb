class StudentsController < ApplicationController
  before_action :set_student, except:[:index, :new, :create]

  def index
    @student = Student.new
    @students = Student.all
    @locations = Location.all
    @courses = Course.all
    @instructors = Instructor.all
  end

  def new
  end

  def show
  end

  def edit
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "#{@student.name} was successfully created"
      redirect_to @student
    else
      flash[:alert] = 'There was a problem creating that student'
      render :index
    end
  end

  def update

  end

  private
  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :location_id, :course_id, :instructor_id, :google_q, :html_q, :css_q, :js_q, :jq_q, :command_q, :git_q, :ruby_q, :sinatra_q, :rails_q, :mvc_q, :db_q, :email)
  end
end
