class SurveysController < ApplicationController

    # called from index
	def new
		@survey=Survey.new
	end

    # redirects to Thank You page
	def thank
	end

    # called when the Submit button is clicked
	def create
		@survey=Survey.new(survey_params)
   		if @survey.save
     	  flash[:notice]="Thank you for answering this survey!"
     	  flash[:color]="valid"
        redirect_to :action => 'thank'
    	else
     	  flash[:notice]="Please answer all fields."
     	  flash[:color]="invalid"
        render :new
    	end	
	end 

	private
	def survey_params
    	params.require(:survey).permit(:name,:user_type,:fr,:fp,:fo,:fs,:fc,:fm,:ft,:rp,:ro,:rs,:rc,:rm,:rt,:po,:ps,:pc,:pm,:pt,:os,:oc,:om,:ot,:sc,:sm,:st,:cm,:ct,:mt)
  	end

end
