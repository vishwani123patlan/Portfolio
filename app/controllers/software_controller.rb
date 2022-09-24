class SoftwareController < ApplicationController
    before_action :set_software, only: %i[ show edit update]

  def index
    @softwares = Software.all
  end

  def new
    @software = Software.new
  end

  def show
  end

  def create
    @software = Software.new(software_params)
      respond_to do |format|
        if @software.save 
          format.html { redirect_to @software, notice: "software was successfully created." }
          format.json { render :show, status: :created, location: @software }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @software.errors, status: :unprocessable_entity }
        end
      end  
  end

  def edit
  end

  def update
    respond_to do |format|
        if @software.update(software_params) 
          format.html { redirect_to @software, notice: "software was successfully updated." }
          format.json { render :show, status: :created, location: @software }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @software.errors, status: :unprocessable_entity }
        end
      end  
  end


  private

    def set_software 
      @software = Software.find(params[:id])
    end

    def software_params
      params.require(:software).permit(:name, :about, :image)
    end
end
