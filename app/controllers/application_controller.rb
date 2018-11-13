class ApplicationController < ActionController::Base

	protected
	  def create_model(model, params)
	    instance = model.new(params)

	    respond_to do |format|
	      if instance.save
	        format.html { redirect_to instance, notice: "#{instance.class.name} was successfully created." }
	        format.json { render :show, status: :created, location: instance }
	      else
	        format.html { render :new }
	        format.json { render json: instance.errors, status: :unprocessable_entity }
	      end
	    end
	  end

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

	  def destroy_model(model, route)
	    model.destroy
	    respond_to do |format|
	      format.html { redirect_to route, notice: "#{model.class.name} was successfully destroyed." }
	      format.json { head :no_content }
	    end
	  end
end
