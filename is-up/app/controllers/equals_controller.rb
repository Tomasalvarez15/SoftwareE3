class EqualsController < ApplicationController
  before_action :set_equal, only: [:show, :edit, :update, :destroy]

  # GET /equals
  # GET /equals.json
  def index
    @equals = Equal.all
  end

  # GET /equals/1
  # GET /equals/1.json
  def show
  end

  # GET /equals/new
  def new
    @equal = Equal.new
  end

  # GET /equals/1/edit
  def edit
  end

  # POST /equals
  # POST /equals.json
  def create
    @equal = Equal.new(equal_params)

    respond_to do |format|
      if @equal.save
        format.html { redirect_to @equal, notice: 'Equal was successfully created.' }
        format.json { render :show, status: :created, location: @equal }
      else
        format.html { render :new }
        format.json { render json: @equal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equals/1
  # PATCH/PUT /equals/1.json
  def update
    respond_to do |format|
      if @equal.update(equal_params)
        format.html { redirect_to @equal, notice: 'Equal was successfully updated.' }
        format.json { render :show, status: :ok, location: @equal }
      else
        format.html { render :edit }
        format.json { render json: @equal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equals/1
  # DELETE /equals/1.json
  def destroy
    @equal.destroy
    respond_to do |format|
      format.html { redirect_to equals_url, notice: 'Equal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equal
      @equal = Equal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equal_params
      params.permit(:liker, :liked, :estado)
    end
end
