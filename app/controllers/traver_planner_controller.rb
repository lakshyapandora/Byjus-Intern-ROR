class TraverPlannerController < ApplicationController
    def index
    end
  
    def search
      cities = find_city(params[:city])
      unless cities
        flash[:alert] = 'city not found'
        return render action: :index
      end
      @city = cities.first
      puts("Lakshya Pandora")  
    end
  
    def request_api(url)
      response = Excon.get(
        url,
        headers: {
          'X-RapidAPI-Host' => URI.parse(url).host ,
          'X-RapidAPI-Key' => 'f510b98675msh740eb4ce244ab24p124eaajsnd20f00fbdc01'
        }
      )
      puts(url)    
      puts(response.status)
  
      return nil if response.status != 200
      JSON.parse(response.body)
    end

    def find_city(name)
      request_api(
        "https://hotels4.p.rapidapi.com/locations/search/?query=#{URI.encode(name)}"
      )
    end
end
