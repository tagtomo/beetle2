json.array!(@bg_kazeis) do |bg_kazei|
  json.extract! bg_kazei, :id, :number, :kazei_number, :sotonendo, :soto_y, :kazeinendo, :kazei_y, :declaration_type, :declaration_date
  json.url bg_kazei_url(bg_kazei, format: :json)
end
