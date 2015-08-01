class KnolsController < ApplicationController
  before_action :set_knol, only: [:show, :edit, :update, :destroy]

  # GET /knols
  # GET /knols.json
  def index
    @knols = Knol.all
  end

  # GET /knols/1
  # GET /knols/1.json
  def show
  end

  # GET /knols/new
  def new
    @knol = Knol.new
  end

  # GET /knols/1/edit
  def edit
  end

  # POST /knols
  # POST /knols.json
  def create
    @knol = Knol.new(knol_params)

    respond_to do |format|
      if @knol.save
        format.html { redirect_to @knol, notice: 'Knol was successfully created.' }
        format.json { render action: 'show', status: :created, location: @knol }
      else
        format.html { render action: 'new' }
        format.json { render json: @knol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knols/1
  # PATCH/PUT /knols/1.json
  def update
    respond_to do |format|
      if @knol.update(knol_params)
        format.html { redirect_to @knol, notice: 'Knol was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @knol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knols/1
  # DELETE /knols/1.json
  def destroy
    @knol.destroy
    respond_to do |format|
      format.html { redirect_to knols_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_knol
      @knol = Knol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def knol_params
      params.require(:knol).permit(:date, :name, :tags, :desc, :instructions, :knowledge, :examples)
    end
end
