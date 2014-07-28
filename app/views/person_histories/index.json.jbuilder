json.array!(@person_histories) do |person_history|
  json.extract! person_history, :id, :number, :history_no, :person_type, :legal_cd, :legal_position_cd, :name, :name_k, :branch_name, :branch_name_k, :zipno, :address1_cd, :address2_cd, :address3_cd, :address4_cd, :address5_cd, :address, :address_kata, :n_zei_id, :serch_name, :serch_name_k, :update_date, :update_reason
  json.url person_history_url(person_history, format: :json)
end
