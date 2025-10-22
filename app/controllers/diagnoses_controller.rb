class DiagnosesController < ApplicationController
  def question
  end

  def result
    @result = DiagnosisLogic.diagnose(params)
    # render :result
  end
end
