class BundlesController < ApplicationController
  before_action :authorize
  before_action :set_bundle, only: [:show, :edit, :update, :destroy]

  def index
    @bundles = Bundle.all
  end

  def show
    @link = Link.new
  end

  def new
    @bundle = Bundle.new
  end

  def edit
  end

  def create
    @bundle = Bundle.new(bundle_params)

    respond_to do |format|
      if @bundle.save
        format.html { redirect_to @bundle, notice: 'Bundle was successfully created.' }
        format.json { render :show, status: :created, location: @bundle }
      else
        format.html { render :new }
        format.json { render json: @bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @bundle.update(bundle_params)
        format.html { redirect_to @bundle, notice: 'Bundle was successfully updated.' }
        format.json { render :show, status: :ok, location: @bundle }
      else
        format.html { render :edit }
        format.json { render json: @bundle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @bundle.destroy
    respond_to do |format|
      format.html { redirect_to bundles_url, notice: 'Bundle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_bundle
      @bundle = Bundle.find(params[:id])
    end

    def bundle_params
      params.require(:bundle).permit(:name, :tag_list)
    end
end
