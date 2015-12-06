class PagesController < ApplicationController
  def new
    @pages = Page.all
  end

  def create
    unless Page.find_by(fb_id: params['data']['data']['0']['from']['id'])
      @page = Page.create(fb_id: params['data']['data']['0']['from']['id'], name: params['data']['data']['0']['from']['name'])
      messages = []
      params['data']['data'].each do |key, value|
        Post.create(page: @page, message: value['message'], created_time: value["created_time"])
      end
    end
  end

  def show
    @page = Page.find(params[:id])
  end
end
