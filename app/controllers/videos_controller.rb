class VideosController < ApplicationController
  before_filter :find_video, only: [:show]

  def show
  end

  def search
    @results = Video.search_by_title(params[:search_term])
    # binding.pry
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end
end
