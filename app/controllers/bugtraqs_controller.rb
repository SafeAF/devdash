class BugtraqsController < ApplicationController
  before_action :set_bugtraq, only: [:show, :edit, :update, :destroy]

  # GET /bugtraqs
  # GET /bugtraqs.json
  def index
    @bugtraqs = Bugtraq.all
  end

  # GET /bugtraqs/1
  # GET /bugtraqs/1.json
  def show
  end

  # GET /bugtraqs/new
  def new
    @bugtraq = Bugtraq.new
  end

  # GET /bugtraqs/1/edit
  def edit
  end

  # POST /bugtraqs
  # POST /bugtraqs.json
  def create
    @bugtraq = Bugtraq.new(bugtraq_params)

    respond_to do |format|
      if @bugtraq.save
        format.html { redirect_to @bugtraq, notice: 'Bugtraq was successfully created.' }
        format.json { render action: 'show', status: :created, location: @bugtraq }
      else
        format.html { render action: 'new' }
        format.json { render json: @bugtraq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bugtraqs/1
  # PATCH/PUT /bugtraqs/1.json
  def update
    respond_to do |format|
      if @bugtraq.update(bugtraq_params)
        format.html { redirect_to @bugtraq, notice: 'Bugtraq was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @bugtraq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bugtraqs/1
  # DELETE /bugtraqs/1.json
  def destroy
    @bugtraq.destroy
    respond_to do |format|
      format.html { redirect_to bugtraqs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bugtraq
      @bugtraq = Bugtraq.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bugtraq_params
      params.require(:bugtraq).permit(:name, :incep_date, :target_date, :desc, :tags, :priority, :bug, :fix, :sourcefile, :remediated)
    end
end
