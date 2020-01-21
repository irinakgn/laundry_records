json.extract! business, :id, :license_type, :license_expiration_date, :license_status, :license_creation_date, :industry, :business_name, :business_name_two, :address, :phone, :borough, :community_board, :bin, :bbl, :nta, :census_tract, :detail, :longitude, :latitude, :created_at, :updated_at
json.url business_url(business, format: :json)
