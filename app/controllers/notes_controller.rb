class NotesController < ApplicationController
  def create
    @patient = Patient.find(params[:patient_id])
    @note = @patient.notes.create(note_params)
    redirect_to patient_path(@patient)
  end

  def destroy
    @patient = Patient.find(params[:patient_id])
    @note = @patient.notes.find(params[:id])
    @note.destroy
    redirect_to patient_path(@patient)
  end

  private
    def note_params
      params.require(:note).permit(:clinician, :body)
    end
end
