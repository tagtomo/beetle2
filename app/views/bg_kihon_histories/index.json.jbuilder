json.array!(@bg_kihon_histories) do |bg_kihon_history|
  json.extract! bg_kihon_history, :id, :number, :history_no, :kazei_type, :toriatukaitabako_type, :tokureitabako_type, :send_type, :stop_sdate, :stop_edate, :change_date, :change_jiyu
  json.url bg_kihon_history_url(bg_kihon_history, format: :json)
end
