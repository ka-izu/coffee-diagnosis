class DiagnosesController < ApplicationController
  def new
  end

  def create
    @result = DiagnosisLogic.diagnose(params)
    render :result
  end
end
