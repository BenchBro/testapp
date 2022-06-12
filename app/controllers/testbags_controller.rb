class TestbagsController < ApplicationController
  before_action :set_testbag, only: %i[ show edit update destroy ]

  # GET /testbags or /testbags.json
  def index
    @testbags = Testbag.all
  end

  # GET /testbags/1 or /testbags/1.json
  def show
  end

  # GET /testbags/new
  def new
    @testbag = Testbag.new
  end

  # GET /testbags/1/edit
  def edit
  end

  # POST /testbags or /testbags.json
  def create
    @testbag = Testbag.new(testbag_params)

    respond_to do |format|
      if @testbag.save
        format.html { redirect_to testbag_url(@testbag), notice: "Testbag was successfully created." }
        format.json { render :show, status: :created, location: @testbag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testbag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testbags/1 or /testbags/1.json
  def update
    respond_to do |format|
      if @testbag.update(testbag_params)
        format.html { redirect_to testbag_url(@testbag), notice: "Testbag was successfully updated." }
        format.json { render :show, status: :ok, location: @testbag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testbag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testbags/1 or /testbags/1.json
  def destroy
    @testbag.destroy

    respond_to do |format|
      format.html { redirect_to testbags_url, notice: "Testbag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testbag
      @testbag = Testbag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testbag_params
      params.require(:testbag).permit(:name, :volume, :minweight, :maxweight, :bagweight, :carry)
    end
end
