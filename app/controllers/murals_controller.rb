class MuralsController < ApplicationController
  before_action :set_mural, only: [:show, :edit, :update, :destroy]

  # GET /murals
  # GET /murals.json
  def index
    @murals = Mural.all
    @mural = Mural.new
  end

  # GET /murals/1
  # GET /murals/1.json
  def show
  end

  # GET /murals/new
  def new

  end

  # GET /murals/1/edit
  def edit
  end

  # POST /murals
  # POST /murals.json
  def create
    @mural = Mural.new(mural_params)

    respond_to do |format|
      if @mural.save
        format.html { redirect_to murals_path, notice: 'Mural was successfully created.' }
        format.json { render :show, status: :created, location: @mural }
      else
        format.html { render :new }
        format.json { render json: @mural.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mural.update(mural_params)
        format.html { redirect_to @mural, notice: 'Mural was successfully updated.' }
        format.json { render :show, status: :ok, location: @mural }
      else
        format.html { render :edit }
        format.json { render json: @mural.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /murals/1
  # DELETE /murals/1.json
  def destroy
    @mural.destroy
    respond_to do |format|
      format.html { redirect_to murals_url, notice: 'Mural was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mural
      @mural = Mural.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mural_params
      params.require(:mural).permit(:mensagem)
    end
end
