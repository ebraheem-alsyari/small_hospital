class DetailsController < ApplicationController
  # before_action :authenticate_user!
  before_action :set_id, only: [:show, :edit, :update, :destroy ]
  # before_action :set_id, only: %i[ show edit update destroy ]

  layout 'application'

    $count = 0
    def index
      
      @details = Detail.where('created_at IS NULL OR created_at > ?', Time.now)
      @details = Detail.where('created_at <= ?', Time.now)
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
        $count =+ 1
        flash[:notice] = "Details saved successfully"
        redirect_to(details_path)
      else
        render('new')
      end
    end

    def edit
      @detail = Detail.find(params[:id])
    end

    def update
      @detail = Detail.find(params[:id])
      if @details.update_attributes(detail_params)
        render('index')
      else
        render('edit')      
      end
    end
    
    def delete
      @details = Detail.find(params[:id]).destroy
      if @details.destroy
        flash[:notice] = "Details saved successfully"
        redirect_to(details_path)
      else
        render('index')
      end
    end
    
    def destroy
      if @details.destroy
        flash[:notice] = "Details saved successfully"
        redirect_to(details_path)
      else
        render('index')
      end
    end

    def modify
      @details = Detail.find(params[:id])
    end

    private
    def set_id
      @details = Detail.find(params[:id])
    end


    def detail_params
      params.require(:details).permit(:name, :age, :description, :phone_number)
    end
end
