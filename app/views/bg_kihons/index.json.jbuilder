json.array!(@bg_kihons) do |bg_kihon|
  json.extract! bg_kihon, :id, :number, :kazei_type, :toriatukaitabako_type, :tokureitabako_type, :send_type, :stop_sdate, :stop_edate, :chenge_date, :change_jiyu
  json.url bg_kihon_url(bg_kihon, format: :json)
end
