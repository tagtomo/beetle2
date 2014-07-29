json.array!(@contacts) do |contact|
  json.extract! contact, :id, :number, :data_type, :department, :name, :phone_no, :fax_no, :e_mail, :note
  json.url contact_url(contact, format: :json)
end
