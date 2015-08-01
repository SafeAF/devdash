class StorsController < ApplicationController
  before_action :set_stor, only: [:show, :edit, :update, :destroy]
  
  
  # GET /stors
  # GET /stors.json
  def index
    @stors = Stor.all
	@files_raw = Dir.glob("public/**/*")
	#count = @files_raw.count.to_int
	@files = @files_raw #@files_raw[5,count]
  end

  
  # GET /stors/1
  # GET /stors/1.json
  def show
  
  end

  # GET /stors/new
  def new
    @stor = Stor.new
  end

  # GET /stors/1/edit
  def edit
  end

  # POST /stors
  # POST /stors.json
  def create
    @stor = Stor.new(stor_params)

	#DataFile.save_file(stor_params)
	
	
    respond_to do |format|
      if @stor.save
        format.html { redirect_to @stor, notice: 'Stor was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stor }
      else
        format.html { render action: 'new' }
        format.json { render json: @stor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stors/1
  # PATCH/PUT /stors/1.json
  def update
    respond_to do |format|
      if @stor.update(stor_params)
        format.html { redirect_to @stor, notice: 'Stor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stors/1
  # DELETE /stors/1.json
  def destroy
    @stor.destroy
    respond_to do |format|
      format.html { redirect_to stors_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stor
      @stor = Stor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stor_params
      params.require(:stor).permit(:name, :tags, :upload_date, :upload_file)
    end
end
