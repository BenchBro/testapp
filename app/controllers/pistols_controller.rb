class PistolsController < ApplicationController
  before_action :set_pistol, only: %i[ show edit update destroy ]

def carry
  Pistol.find(params[:name]).carry
  redirect_to :index
end




  # GET /pistols or /pistols.json
  def index
    @pistols = Pistol.all
  end

  # GET /pistols/1 or /pistols/1.json
  def show
  end

  # GET /pistols/new
  def new
    @pistol = Pistol.new
  end

  # GET /pistols/1/edit
  def edit
  end

  # POST /pistols or /pistols.json
  def create
    @pistol = Pistol.new(pistol_params)

    respond_to do |format|
      if @pistol.save
        format.html { redirect_to pistol_url(@pistol), notice: "Pistol was successfully created." }
        format.json { render :show, status: :created, location: @pistol }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pistol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pistols/1 or /pistols/1.json
  def update
    respond_to do |format|
      if @pistol.update(pistol_params)
        format.html { redirect_to pistol_url(@pistol), notice: "Pistol was successfully updated." }
        format.json { render :show, status: :ok, location: @pistol }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pistol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pistols/1 or /pistols/1.json
  def destroy
    @pistol.destroy

    respond_to do |format|
      format.html { redirect_to pistols_url, notice: "Pistol was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pistol
      @pistol = Pistol.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pistol_params
      params.require(:pistol).permit(:name, :manufacturer, :caliber, :capacity, :age, :accessories, :comments, :carry)
    end
end
