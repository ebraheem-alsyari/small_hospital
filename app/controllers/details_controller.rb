class DetailsController < ApplicationController


  layout 'application'
    def index
      @details = Detail.all
    end

    def show
      @details = Detail.first
    end

    def new
      @details = Detail.new
    end

    def create
      @details = Detail.new(detail_params)
      if @details.save
        flash[:notice] = "Details saved successfully"
        redirect_to(details_path)
      else
        render('new')
      end
    end

    def edit
      @details = Details.find(params[:id])
    end

    def update
      @details = Details.find(params[:id])
      if @details.update_attributes(detail_params)
      else
        render('edit')
      end

    end

    def delete
      @details = Detail.find(params[:id])
    end

    def destroy
      details = Details.find(params[:id]).destroy
      if @details.destroy_attributes
        render('index')
      end
    end


    def detail_params
      params.require(:detail).permit(:name, :age, :phone_number, :description)
    end
end
