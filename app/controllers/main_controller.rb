class MainController < ApplicationController


  require 'yelp'
  before_action :is_authenticated?, except: [:index]
  def index

  end

  def show
    @query = params[:id]

    # if @query
    #   response = client.search('Seattle')
    #   @place = JSON.parse(response)
    # else
    #   @place = ['']
    # end
    if @query
      response = Yelp.client.search('Seattle',{term: @query})
      @result = response.businesses
      # render json: @result

    else
      @result = ['']
    end
  end


  private

  # def index_params
  #   params.require(:)
  # end
end


