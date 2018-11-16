class SupplementariesController < ApplicationController
  before_action :set_supplementary, only: [:show, :edit, :update, :destroy]

  # GET /supplementaries
  # GET /supplementaries.json
  def index
    @supplementaries = Supplementary.all
  end

  # GET /supplementaries/1
  # GET /supplementaries/1.json
  def show
    @student = Student.find(@supplementary.student_id)
    @course = Course.find(@supplementary.course_id)
  end

  # GET /supplementaries/new
  def new
    @supplementary = Supplementary.new
  end

  # GET /supplementaries/1/edit
  def edit
  end

  # POST /supplementaries
  # POST /supplementaries.json

  def create
    @supplementary = Supplementary.new(supplementary_params)
    if @supplementary.save
      flash[:success] = "SSM was successfully created..."
      redirect_to supplementary_path(@supplementary)
    else
      render 'new'
    end
  end

  # PATCH/PUT /supplementaries/1
  # PATCH/PUT /supplementaries/1.json

  def update

    if @supplementary.update(supplementary_params)
      flash[:success] = "SSM info was successfully updated"
      redirect_to supplementary_path(@supplementary)
    else
      render 'edit'
    end
  end

  # DELETE /supplementaries/1
  # DELETE /supplementaries/1.json

  def destroy

    @supplementary.destroy

    flash[:danger] = "SSM was successfully deleted"
    redirect_to supplementaries_path
  end

  def filter_courses_by_school_ssm
    student = Student.find(params[:selected_student])
    school = School.find(student.school_id)
    @filtered_courses = Course.where(school_id: school.id)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplementary
      @supplementary = Supplementary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplementary_params
      params.require(:supplementary).permit(:student_id, :course_id)
    end
end
