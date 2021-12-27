module API
  module V1
    
    class AirportsController < BaseController
      
      def index
        @airports = Airport.order(passenger_volume: :desc, name: :asc)
        # @airports = @airports.where(country_alpha2: params[:countries]) if params[:countries].present?

        @pagy, @airports = paginate(@airports, 5)

        render json: { data: @airports, pagy: pagy_metadata(@pagy) }
      end

    end
  end
end