class InstructorsController < ApplicationController
  before_action :set_instructor, except:[:index, :new, :create]

  def index
    @instructors = Instructor.all
    @instructor = Instructor.new
    @locations = Location.all
    @courses = Course.all
  end

  def new
  end

  def show
    @course = Course.find(@instructor.course_id)
    @location = Location.find(@instructor.location_id)
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      flash[:notice] = "#{@instructor.name} has been successfully created"
      redirect_to @instructor
    else
      flash[:alert] = 'There was a problem creating that instructor'
      render :index
    end
  end

  def edit

  end

  private
  def set_instructor
    @instructor = Instructor.find(params[:id])
  end

  def instructor_params
    params.require(:instructor).permit(:name, :location_id, :course_id, :email)
  end

end
