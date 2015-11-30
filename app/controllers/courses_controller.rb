class CoursesController < ApplicationController
  before_action :set_course, except:[:index, :new, :create]

  def index
    @courses = Course.all
    @course = Course.new
    @locations = Location.all
  end


  def new
    @course = Course.new
    @locations = Location.all
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      flash[:notice] = "#{@course.name} has been added"
      redirect_to @course
    else
      flash[:alert] = 'There was a problem creating that course'
      render :new
    end
  end

  def show
    @locations = @course.locations
    p "#{@locations.first} ******************"
    @instructors = @course.instructors
  end

  def edit
  end

  def remove
    @course.location_id = nil
    render nothing: true
  end

  def destroy
    if @course.destory
      flash[:notice] = 'This course has been deleted'
      redirect_to :index
    else
      flash[:alert] = 'There was a problem deleting that course'
      redirect_to @course
    end
  end


  private
  def set_course
    @course = Course.find(params[:id])
  end

  def course_params
    params.require(:course).permit(:name, :location_id)
  end
end
