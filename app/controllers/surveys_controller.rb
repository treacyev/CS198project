require 'matrix'

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

        # compute for weights of the quality characteristics
        # save to matrix the values from the form
        matrix1 = Matrix[
            [1, @survey.fr, @survey.fp, @survey.fo, @survey.fs, @survey.fc, @survey.fm, @survey.ft],
            [1/@survey.fr, 1, @survey.rp, @survey.ro, @survey.rs, @survey.rc, @survey.rm, @survey.rt],
            [1/@survey.fp, 1/@survey.rp, 1, @survey.po, @survey.ps, @survey.pc, @survey.pm, @survey.pt],
            [1/@survey.fo, 1/@survey.ro, 1/@survey.po, 1, @survey.os, @survey.oc, @survey.om, @survey.ot],
            [1/@survey.fs, 1/@survey.rs, 1/@survey.ps, 1/@survey.os, 1, @survey.sc, @survey.sm, @survey.st],
            [1/@survey.fc, 1/@survey.rc, 1/@survey.pc, 1/@survey.oc, 1/@survey.sc, 1, @survey.cm, @survey.ct],
            [1/@survey.fm, 1/@survey.rm, 1/@survey.pm, 1/@survey.om, 1/@survey.sm, 1/@survey.cm, 1, @survey.mt],
            [1/@survey.ft, 1/@survey.rt, 1/@survey.pt, 1/@survey.ot, 1/@survey.st, 1/@survey.ct, 1/@survey.mt, 1]
        ]

        ei_matrix = Matrix::EigenvalueDecomposition.new(matrix1)
        ei_values = ei_matrix.eigenvalues()
        ei_vectors = ei_matrix.eigenvectors()

        # If the eigenvalue is a complex number, change it to a -100
        for i in 0..(ei_values.size-1)
            if ei_values[i].class == Complex
                ei_values[i] = -100
            end
        end

        # get the largest eigenvalue
        largest_ei_index = ei_values.rindex(ei_values.max)

        # solve for the normalize weight vector
        not_normalized = ei_vectors[largest_ei_index]
        normalized = not_normalized.normalize

        # assign the computed weights to the params for database
        @survey.f_weight = normalized[0]
        @survey.r_weight = normalized[1]
        @survey.p_weight = normalized[2]
        @survey.o_weight = normalized[3]
        @survey.s_weight = normalized[4]
        @survey.c_weight = normalized[5]
        @survey.m_weight = normalized[6]
        @survey.t_weight = normalized[7]

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
    	params.require(:survey).permit(:name,:user_type,:fr,:fp,:fo,:fs,:fc,:fm,:ft,:rp,:ro,:rs,:rc,:rm,:rt,:po,:ps,:pc,:pm,:pt,:os,:oc,:om,:ot,:sc,:sm,:st,:cm,:ct,:mt,:f_weight,:r_weight,:p_weight,:o_weight,:s_weight,:c_weight,:m_weight,:t_weight)
  	end

end
