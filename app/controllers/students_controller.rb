class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student = Student.create( student_params(:name, :email, :dob) )
    redirect_to students_path
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params(:name, :email, :dob) )
    redirect_to @student
  end

  private

  def student_params(*args)
    params.require(:student).permit(*args)
  end

end


# class PublicKeysController < ApplicationController
#
#   def create
#     params[:public_key] # {user_id: , key: }
#     @public_key = PublicKey.create(params[:public_key])
#   end
#
# end
