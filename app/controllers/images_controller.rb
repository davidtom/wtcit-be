class ImagesController < ApplicationController

  def create
    @category = Category.find_or_create_by(name: params[:category])
    @image = Image.create(url: params[:url], answer: params[:answer])
    @category.images << @image
    render json: [{image: @image}, {count: @category.images.all.size}, {category: @category.name}]
  end

end
