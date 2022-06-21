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
      @details = Detail.new(params[:name])
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
      @details.destroy
      redirect_to(:action => 'index')
    end


    def detail_params
      params.require(:detail).permit(:created_at, :updated_at)
    end
end
