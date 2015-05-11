class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end


  def show
    @link = Photo.find(params["id"]).source
  end


  def new_form
    # @link = Photo.find(params["id"]).source
  end

  def create_photo
    # @link = Photo.find(params["id"]).source
  end

 def create_row

	  p         = Photo.new
	  p.source  = params["the_source"]
	  p.caption = params["the_caption"]
	  p.save  

	  @caption  = params["the_caption"]

 end


  def destroy 

  		i 		  =Photo.find(params["id"])
  		@caption  = i.caption  
  		i.destroy
 end

 def edit_form

  		i 		  =Photo.find(params["id"])
  		@caption  = i.caption
  		@source   = i.source

end

 def update_form

    p = Photo.find(params[:id])
    p.source = params[:the_source]
    p.caption = params[:the_caption]
    p.save

end

end


