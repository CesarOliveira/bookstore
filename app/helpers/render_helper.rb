module RenderHelper
	def update_model(model, params)
    respond_to do |format|
      if model.update(params)
        format.html { redirect_to model, notice: "#{model.class.name} was successfully updated." }
        format.json { render :show, status: :ok, location: model }
      else
        format.html { render :edit }
        format.json { render json: model.errors, status: :unprocessable_entity }
      end
    end
	end	
end