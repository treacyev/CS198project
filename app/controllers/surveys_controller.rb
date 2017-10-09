require 'matrix'

class SurveysController < ApplicationController

    # called from index
	def new
		@survey=Survey.new
	end

    # redirects to Thank You page
	def thank
        @f = ($global_f * 100).round(2)
        @r = ($global_r * 100).round(2)
        @p = ($global_p * 100).round(2)
        @o = ($global_o * 100).round(2)
        @s = ($global_s * 100).round(2)
        @c = ($global_c * 100).round(2)
        @m = ($global_m * 100).round(2)
        @t = ($global_t * 100).round(2)
        @user_type = $global_user_type


        @result = Survey.find_by user_type: 'user'
        @test = @result.id

	end

    # called when the Submit button is clicked
	def create
		@survey=Survey.new(survey_params)

   		if @survey.save
     	  flash[:notice]="Thank you for answering this survey!"
     	  flash[:color]="valid"


            # compute for weights of the quality characteristics

            # checks if the input is negative. If so, then convert it to a reciprocal meaning the 2nd quality characteristic is more preferred
            if @survey.fr < 0
                @survey.fr = -1.0/@survey.fr
            end

            if @survey.fp < 0
                @survey.fp = -1.0/@survey.fp
            end

            if @survey.fo < 0
                @survey.fo = -1.0/@survey.fo
            end

            if @survey.fs < 0
                @survey.fs = -1.0/@survey.fs
            end

            if @survey.fc < 0
                @survey.fc = -1.0/@survey.fc
            end

            if @survey.fm < 0
                @survey.fm = -1.0/@survey.fm
            end

            if @survey.ft < 0
                @survey.ft = -1.0/@survey.ft
            end


            if @survey.rp < 0
                @survey.rp = -1.0/@survey.rp
            end

            if @survey.ro < 0
                @survey.ro = -1.0/@survey.ro
            end

            if @survey.rs < 0
                @survey.rs = -1.0/@survey.rs
            end

            if @survey.rc < 0
                @survey.rc = -1.0/@survey.rc
            end

            if @survey.rm < 0
                @survey.rm = -1.0/@survey.rm
            end

            if @survey.rt < 0
                @survey.rt = -1.0/@survey.rt
            end


            if @survey.po < 0
                @survey.po = -1.0/@survey.po
            end

            if @survey.ps < 0
                @survey.ps = -1.0/@survey.ps
            end

            if @survey.pc < 0
                @survey.pc = -1.0/@survey.pc
            end

            if @survey.pm < 0
                @survey.pm = -1.0/@survey.pm
            end

            if @survey.pt < 0
                @survey.pt = -1.0/@survey.pt
            end


            if @survey.os < 0
                @survey.os = -1.0/@survey.os
            end

            if @survey.oc < 0
                @survey.oc = -1.0/@survey.oc
            end

            if @survey.om < 0
                @survey.om = -1.0/@survey.om
            end

            if @survey.ot < 0
                @survey.ot = -1.0/@survey.ot
            end


            if @survey.sc < 0
                @survey.sc = -1.0/@survey.sc
            end

            if @survey.sm < 0
                @survey.sm = -1.0/@survey.sm
            end

            if @survey.st < 0
                @survey.st = -1.0/@survey.st
            end


            if @survey.cm < 0
                @survey.cm = -1.0/@survey.cm
            end

            if @survey.ct < 0
                @survey.ct = -1.0/@survey.ct
            end


            if @survey.mt < 0
                @survey.mt = -1.0/@survey.mt
            end


            # save to matrix the values from the form
            matrix1 = Matrix[
                [1, @survey.fr, @survey.fp, @survey.fo, @survey.fs, @survey.fc, @survey.fm, @survey.ft],
                [1.0/@survey.fr, 1, @survey.rp, @survey.ro, @survey.rs, @survey.rc, @survey.rm, @survey.rt],
                [1.0/@survey.fp, 1.0/@survey.rp, 1, @survey.po, @survey.ps, @survey.pc, @survey.pm, @survey.pt],
                [1.0/@survey.fo, 1.0/@survey.ro, 1.0/@survey.po, 1, @survey.os, @survey.oc, @survey.om, @survey.ot],
                [1.0/@survey.fs, 1.0/@survey.rs, 1.0/@survey.ps, 1.0/@survey.os, 1, @survey.sc, @survey.sm, @survey.st],
                [1.0/@survey.fc, 1.0/@survey.rc, 1.0/@survey.pc, 1.0/@survey.oc, 1.0/@survey.sc, 1, @survey.cm, @survey.ct],
                [1.0/@survey.fm, 1.0/@survey.rm, 1.0/@survey.pm, 1.0/@survey.om, 1.0/@survey.sm, 1.0/@survey.cm, 1, @survey.mt],
                [1.0/@survey.ft, 1.0/@survey.rt, 1.0/@survey.pt, 1.0/@survey.ot, 1.0/@survey.st, 1.0/@survey.ct, 1.0/@survey.mt, 1]
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

            # get the sum of the value in the not_normalized weights vector
            sum = 0.0
            for x in not_normalized
                sum = sum + x
            end
            normalized = not_normalized / sum
            # normalized = not_normalized.normalize

            # assign the computed weights to the params for database
            @survey.f_weight = normalized[0].abs
            @survey.r_weight = normalized[1].abs
            @survey.p_weight = normalized[2].abs
            @survey.o_weight = normalized[3].abs
            @survey.s_weight = normalized[4].abs
            @survey.c_weight = normalized[5].abs
            @survey.m_weight = normalized[6].abs
            @survey.t_weight = normalized[7].abs

            $global_f = @survey.f_weight
            $global_r = @survey.r_weight
            $global_p = @survey.p_weight
            $global_o = @survey.o_weight
            $global_s = @survey.s_weight
            $global_c = @survey.c_weight
            $global_m = @survey.m_weight
            $global_t = @survey.t_weight
            $global_user_type = @survey.user_type

            @survey.save

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
