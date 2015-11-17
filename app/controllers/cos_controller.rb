class CosController < ApplicationController
  before_action :set_co, only: [:show, :edit, :update, :destroy]

  # GET /cos
  # GET /cos.json
  def index
    @cos = Co.all
  end

  # GET /cos/1
  # GET /cos/1.json
  def show
  end

  # GET /cos/new
  def new
    @co = Co.new
  end

  # GET /cos/1/edit
  def edit
  end

  # POST /cos
  # POST /cos.json
  def create
    @co = Co.new(co_params)

    respond_to do |format|
      if @co.save
        format.html { redirect_to @co, notice: 'Co was successfully created.' }
        format.json { render :show, status: :created, location: @co }
      else
        format.html { render :new }
        format.json { render json: @co.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cos/1
  # PATCH/PUT /cos/1.json
  def update
    respond_to do |format|
      if @co.update(co_params)
        format.html { redirect_to @co, notice: 'Co was successfully updated.' }
        format.json { render :show, status: :ok, location: @co }
      else
        format.html { render :edit }
        format.json { render json: @co.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cos/1
  # DELETE /cos/1.json
  def destroy
    @co.destroy
    respond_to do |format|
      format.html { redirect_to cos_url, notice: 'Co was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_co
      @co = Co.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def co_params
      params.require(:co).permit(:name, :status, :item_group_id)
    end
end
