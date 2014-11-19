class LinksController < ApplicationController
  
  before_action :authorize
  before_action :set_bundle
  before_action :set_link, only: [:show, :edit, :update, :destroy]

  def index
    @links = @bundle.links.all
  end
  
  def show
  end
  
  def new
    @link = @bundle.links.new
  end

  def edit
  end

  def create
    @link = @bundle.links.build(link_params)
    if @link.save
      redirect_to bundle_path(@bundle), notice: 'Link was successfully created.'
    else
      render :new
    end
  end

  def update
    if @link.update(link_params)
      redirect_to bundle_path(@bundle), notice: 'Link was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @link.destroy
    redirect_to bundle_links_path, notice: 'Link was successfully destroyed.'
  end

  private
    
    def set_bundle
      @bundle = Bundle.find(params[:bundle_id])
    end

    def set_link
      @link = @bundle.links.find(params[:id])
    end
    
    def link_params
      params.require(:link).permit(:name, :url, :bundle_id)
    end

end
