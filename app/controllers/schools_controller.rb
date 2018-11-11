class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  # GET /schools.json
  def index
    @schools = School.all
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # GET /schools/1/edit
  def edit
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)
    if @school.save
      flash[:success] = "School was successfully created..."
      redirect_to school_path(@school)
    else
      render 'new'
    end
  end

  # PATCH/PUT /schools/1
  # PATCH/PUT /schools/1.json
  def update

    if @school.update(school_params)
      flash[:success] = "School info was successfully updated"
      redirect_to school_path(@school)
    else
      render 'edit'
    end
  end

  # DELETE /schools/1
  # DELETE /schools/1.json
  def destroy

    @school.destroy

    flash[:danger] = "School was successfully deleted"
    redirect_to schools_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params.require(:school).permit(:school_name)
    end
end
