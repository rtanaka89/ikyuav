class ImagesController < ApplicationController
     def index
          @images = Image.all
     end

     def new
          @image = Image.new
     end

     def create
          @image = Image.new(image_params)

          if @image.save
               redirect_to images_url
          else
               render 'new'
          end
     end

     def show
          @image = Image.where(["id = ?", params[:id]]).first
     end

     private
     def image_params
          params.require(:image).permit(:name, :info, :info_cache, :remove_image)
     end
end
