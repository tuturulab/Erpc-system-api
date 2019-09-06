class CompaniesController < ApplicationController
  before_action :authorize_request
  
  #respond_to :json

  # GET /companies
  def index 
    @companies = Company.where(user_id: @current_user.id )
    render json: @companies, status: :ok
  end

  # POST /companies
  def create
    @companie = Company.new(company_params)
    #@companie.logo = logo_param[:logo]
    @companie.user_id = @current_user.id
    
    if @companie.save
      render json: @companie, status: :created
    else
      render json: { errors: @companie.errors.full_messages },
            status: :unprocessable_entity
    end
    
  end

  def edit
  
  end
  
  def destroy
  
  end

  #Validation
  def company_params
    params.permit(:name, :description, :logo )
  end

  def logo_param
    params.permit( :logo)
  end

end
