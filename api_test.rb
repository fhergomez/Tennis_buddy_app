require 'rest-client'
require 'awesome_print'

  def show
    @query = params[:q]
    if @query
      response = RestClient.get('https://maps.googleapis.com/maps/api/place/queryautocomplete/json',
      :params=> {
        :input => @query,
        :key => ENV['TENNIS_GOOGLE_KEY'],
      })
      @place = JSON.parse(response)['predictions']
    else
      @place = ['']
    end
  end
end


data = JSON.parse(response.body)
ap data["results"]