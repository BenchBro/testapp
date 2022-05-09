class TesthashesController < ApplicationController
  before_action :set_testhash, only: %i[ show edit update destroy ]

  # GET /testhashes or /testhashes.json
  def index
    @testhashes = Testhash.all
  end

  # GET /testhashes/1 or /testhashes/1.json
  def show
  end

  # GET /testhashes/new
  def new
    @testhash = Testhash.new
  end

  # GET /testhashes/1/edit
  def edit
  end

  # POST /testhashes or /testhashes.json
  def create
    @testhash = Testhash.new(testhash_params)

    respond_to do |format|
      if @testhash.save
        format.html { redirect_to testhash_url(@testhash), notice: "Testhash was successfully created." }
        format.json { render :show, status: :created, location: @testhash }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testhash.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testhashes/1 or /testhashes/1.json
  def update
    respond_to do |format|
      if @testhash.update(testhash_params)
        format.html { redirect_to testhash_url(@testhash), notice: "Testhash was successfully updated." }
        format.json { render :show, status: :ok, location: @testhash }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testhash.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testhashes/1 or /testhashes/1.json
  def destroy
    @testhash.destroy

    respond_to do |format|
      format.html { redirect_to testhashes_url, notice: "Testhash was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testhash
      @testhash = Testhash.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testhash_params
      params.require(:testhash).permit(:test1, :test2, :test3, :string, :test4, :test5)
    end
end
