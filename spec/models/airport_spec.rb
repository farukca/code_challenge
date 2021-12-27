# == Schema Information
#
# Table name: airports
#
#  id               :uuid             not null, primary key
#  altitude         :integer
#  city             :string
#  country          :string
#  country_alpha2   :string
#  dst              :string
#  iata             :string
#  icao             :string
#  kind             :string
#  latitude         :decimal(10, 6)
#  longitude        :decimal(10, 6)
#  name             :string
#  passenger_volume :integer
#  source           :string
#  timezone         :string
#  timezone_olson   :string
#  uid              :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_airports_on_iata                    (iata) UNIQUE
#  index_airports_on_iata_and_icao_and_name  (iata,icao,name)
#  index_airports_on_icao                    (icao)
#  index_airports_on_name                    (name)
#
require 'rails_helper'

RSpec.describe Airport, type: :model do
  
  context "airport unit tests for validation" do

    it "ensures iata code is present" do
      fra_airport = create(:airport, :fra)
      fra_airport.iata = nil

      expect(fra_airport.save).to eq(false)
    end

    it "ensures iata code is unique" do
      munich_port = create(:airport, :muc)
      munich_port.save

      second_port = munich_port.dup

      expect(second_port.save).to eq(false)
    end

  end

end
