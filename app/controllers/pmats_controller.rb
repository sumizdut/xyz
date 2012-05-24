class PmatsController < ApplicationController
  # GET /pmats
  # GET /pmats.json
  def index
    @pmats = Pmat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pmats }
    end
  end

  # GET /pmats/1
  # GET /pmats/1.json
  def show
    @pmat = Pmat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pmat }
    end
  end

  # GET /pmats/new
  # GET /pmats/new.json
  def new
    @pmat = Pmat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pmat }
    end
  end

  # GET /pmats/1/edit
  def edit
    @pmat = Pmat.find(params[:id])
  end

  # POST /pmats
  # POST /pmats.json
  def create
    @pmat = Pmat.new(params[:pmat])

    respond_to do |format|
      if @pmat.save
        format.html { redirect_to @pmat, notice: 'Pmat was successfully created.' }
        format.json { render json: @pmat, status: :created, location: @pmat }
      else
        format.html { render action: "new" }
        format.json { render json: @pmat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pmats/1
  # PUT /pmats/1.json
  def update
    @pmat = Pmat.find(params[:id])

    respond_to do |format|
      if @pmat.update_attributes(params[:pmat])
        format.html { redirect_to @pmat, notice: 'Pmat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pmat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pmats/1
  # DELETE /pmats/1.json
  def destroy
    @pmat = Pmat.find(params[:id])
    @pmat.destroy

    respond_to do |format|
      format.html { redirect_to pmats_url }
      format.json { head :no_content }
    end
  end
end
