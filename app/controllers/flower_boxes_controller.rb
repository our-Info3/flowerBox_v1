class FlowerBoxesController < ApplicationController
  before_action :set_flower_box, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :new, :create, :edit, :update,:destroy,:show]
  before_action :set_order, only: [:index, :new, :create, :edit, :update,:destroy,:show]


  # GET /flower_boxes
  # GET /flower_boxes.json
  def index
    @flower_boxes = FlowerBox.all
  end

  # GET /flower_boxes/1
  # GET /flower_boxes/1.json
  def show
  end

  # GET /flower_boxes/new
  def new
    @flower_box =FlowerBox.new
  end

  # GET /flower_boxes/1/edit
  def edit
  end

  # POST /flower_boxes
  # POST /flower_boxes.json
  def create 
    @flower_box = FlowerBox.new(flower_box_params)
    @flower_box.order = @order
    @flower_box.save

    respond_to do |format|
      if @flower_box.save
        format.html { redirect_to user_order_path(@user,@order), notice: 'Flower box was successfully created.' }
        format.json { render action: 'show', status: :created, location: @flower_box }
      else
        format.html { render action: 'new' }
        format.json { render json: @flower_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flower_boxes/1
  # PATCH/PUT /flower_boxes/1.json
  def update
    respond_to do |format|
      if @flower_box.update(params[:flower_box])
        format.html { redirect_to @flower_box, notice: 'Flower box was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @flower_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flower_boxes/1
  # DELETE /flower_boxes/1.json
  def destroy
    @flower_box.destroy
    respond_to do |format|
      format.html { redirect_to flower_boxes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flower_box
      @flower_box = FlowerBox.find(params[:id])
    end
    def set_user
      @user=User.find(session[:user_id])
    end
    def set_order
      @order=Order.find(session[:order_id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def flower_box_params
      params.require(:flower_box).permit(:price, :size, :color, :order_id)
    end
end
