class AdressesController < ApplicationController
  before_action :set_adress, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :create, :edit, :update,:destroy,:show]
  
  # GET /adresses
  # GET /adresses.json
  def index
    @adresses =@user.adresses
  end

  # GET /adresses/1
  # GET /adresses/1.json
  def show
  end

  # GET /adresses/new
  def new
    @adress = @user.adresses.build
  end

  # GET /adresses/1/edit
  def edit
  end

  # POST /adresses
  # POST /adresses.json
  def create
    @adress = Adress.new(adress_params)
    @adress.user_id = @user.id

    respond_to do |format|
      if @adress.save
        format.html { redirect_to user_adress_path(@user,@adress), notice: 'Adress was successfully created.' }
        format.json { render action: 'show', status: :created, location: @adress }
      else
        format.html { render action: 'new' }
        format.json { render json: @adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adresses/1
  # PATCH/PUT /adresses/1.json
  def update
    @adress.user_id = @user.id
    respond_to do |format|
      if @adress.update(adress_params)
        format.html { redirect_to user_adresses_path(@user), notice: 'Adress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @adress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adresses/1
  # DELETE /adresses/1.json
  def destroy
    @adress.destroy
    respond_to do |format|
      format.html { redirect_to user_adresses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adress
      @adress = Adress.find(params[:id])
    end
    
    def set_user
    @user=User.find(params[:user_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def adress_params
      params.require(:adress).permit(:billing_street, :billing_house_number, :billing_zipcode, :billing_city, :shipping_street, :shipping_house_number, :shipping_zipcode, :shipping_city, :user_id)
    end
end
