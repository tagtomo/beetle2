class CreateBankAccounts < ActiveRecord::Migration
  def change
    create_table :bank_accounts do |t|
      t.string :number
      t.string :data_type
      t.string :bank_cd
      t.string :store_cd
      t.string :account_type
      t.string :account_number
      t.string :account_holder
      t.string :account_holder_k
      t.string :transfer_method
      t.date :transfer_request_date
      t.string :stop_flg
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
