# frozen_string_literal: true

class GustosController < ApplicationController
  before_action :set_gusto, only: %i[show edit update destroy]

  # GET /gustos
  # GET /gustos.json
  def index
    @gustos = Gusto.all
  end

  # GET /gustos/1
  # GET /gustos/1.json
  def show; end

  # GET /gustos/new
  def new
    @gusto = Gusto.new
  end

  # GET /gustos/1/edit
  def edit; end

  # POST /gustos
  # POST /gustos.json
  def create
    @gusto = Gusto.new(gusto_params)

    respond_to do |format|
      if @gusto.save
        format.html { redirect_to @gusto, notice: 'Gusto was successfully created.' }
        format.json { render :show, status: :created, location: @gusto }
      else
        format.html { render :new }
        format.json { render json: @gusto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gustos/1
  # PATCH/PUT /gustos/1.json
  def update
    respond_to do |format|
      if @gusto.update(gusto_params)
        format.html { redirect_to @gusto, notice: 'Gusto was successfully updated.' }
        format.json { render :show, status: :ok, location: @gusto }
      else
        format.html { render :edit }
        format.json { render json: @gusto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gustos/1
  # DELETE /gustos/1.json
  def destroy
    @gusto.destroy
    respond_to do |format|
      format.html { redirect_to gustos_url, notice: 'Gusto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_gusto
    @gusto = Gusto.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def gusto_params
    params.require(:gusto).permit(:mail1, :mail2, :descripcion)
  end
end
