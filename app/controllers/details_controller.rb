class DetailsController < ApplicationController
  before_action :confirm_logged_in
  before_action :set_id, only: [:index ]

  layout 'application'


    def index
      
   self.search
      @details = Detail.all
   
      
    
      # @details = Detail.search(:search)
      

    end

    def search
      @detail = Detail.search(params[:search])
    end


    def show
      @details = Detail.all
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
        flash[:notice] = "Write name first"
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
    def search
     
    end

    def set_id
      @details = Detail.all
      @details = Detail.find_by(params[:id])
    end

    def authenticate_with_http_digest

      if @user.present? && @user.authenticate(params[:password])
        flash[:notice] = "Welcome to our Hospital"
        redirect_to sign_in_path
      else
      end
    end


    def detail_params
      params.require(:details).permit(:name, :age, :description, :phone_number)
    end
  end