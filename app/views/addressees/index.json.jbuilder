json.array!(@addressees) do |addressee|
  json.extract! addressee, :id, :number, :data_type, :name, :zipno, :address1_cd, :address2_cd, :address3_cd, :address4_cd, :address5_cd, :address, :address_kata, :start_date, :end_date
  json.url addressee_url(addressee, format: :json)
end
