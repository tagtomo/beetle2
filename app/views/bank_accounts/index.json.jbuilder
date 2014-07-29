json.array!(@bank_accounts) do |bank_account|
  json.extract! bank_account, :id, :number, :data_type, :bank_cd, :store_cd, :account_type, :account_number, :account_holder, :account_holder_k, :transfer_method, :transfer_request_date, :stop_flg, :start_date, :end_date
  json.url bank_account_url(bank_account, format: :json)
end
