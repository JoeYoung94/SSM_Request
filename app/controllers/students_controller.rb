class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
    @schooles = School.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    school_id = @student.school_id
    @assigned_school = School.find(school_id)
  end

  # GET /students/new
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json

  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:success] = "Student was successfully created..."
      redirect_to student_path(@student)
    else
      render 'new'
    end
  end

  def update

    if @student.update(student_params)
      flash[:success] = "Student info was successfully updated"
      redirect_to student_path(@student)
    else
      render 'edit'
    end
  end


  def destroy

    @student.destroy

    flash[:danger] = "Student was successfully deleted"
    redirect_to students_path
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:student_name, :school_id)
    end
end
