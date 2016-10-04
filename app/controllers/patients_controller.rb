class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new
  end

  def edit
    @patient = Patient.find(params[:id])
  end


  def create
    @patient = Patient.new(patient_params)

    if @patient.save
      redirect_to @patient
    else
      render 'new'
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:pID, :last_name, :first_name, :birth_date)
  end
end
