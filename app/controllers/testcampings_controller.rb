class TestcampingsController < ApplicationController
  before_action :set_testcamping, only: %i[ show edit update destroy ]

  # GET /testcampings or /testcampings.json
  def index
    @testcampings = Testcamping.all
  end

  # GET /testcampings/1 or /testcampings/1.json
  def show
  end

  # GET /testcampings/new
  def new
    @testcamping = Testcamping.new
  end

  # GET /testcampings/1/edit
  def edit
  end

  # POST /testcampings or /testcampings.json
  def create
    @testcamping = Testcamping.new(testcamping_params)

    respond_to do |format|
      if @testcamping.save
        format.html { redirect_to testcamping_url(@testcamping), notice: "Testcamping was successfully created." }
        format.json { render :show, status: :created, location: @testcamping }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @testcamping.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testcampings/1 or /testcampings/1.json
  def update
    respond_to do |format|
      if @testcamping.update(testcamping_params)
        format.html { redirect_to testcamping_url(@testcamping), notice: "Testcamping was successfully updated." }
        format.json { render :show, status: :ok, location: @testcamping }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @testcamping.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testcampings/1 or /testcampings/1.json
  def destroy
    @testcamping.destroy

    respond_to do |format|
      format.html { redirect_to testcampings_url, notice: "Testcamping was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testcamping
      @testcamping = Testcamping.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def testcamping_params
      params.require(:testcamping).permit(:name, :weight, :volume, :carry)
    end
end

private

def testcampings_params
  params.require(:testcamping).permit(:title, :completed)
end

def batch_operation
  case params[:operation]
  when "carry"
    Testcamping.where(id: params[:testcamping_ids]).update_all(carry: true)
  end
end
