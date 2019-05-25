class Api::PhotosController < ApplicationController
  def index
    @photos = Gallery.order(order: 'asc').all
  end
end
