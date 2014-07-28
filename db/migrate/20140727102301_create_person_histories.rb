class CreatePersonHistories < ActiveRecord::Migration
  def change
    create_table :person_histories do |t|
      t.string :number
      t.integer :history_no
      t.string :person_type
      t.string :legal_cd
      t.string :legal_position_cd
      t.string :name
      t.string :name_k
      t.string :branch_name
      t.string :branch_name_k
      t.string :zipno
      t.string :address1_cd
      t.string :address2_cd
      t.string :address3_cd
      t.string :address4_cd
      t.string :address5_cd
      t.string :address
      t.string :address_kata
      t.string :n_zei_id
      t.string :serch_name
      t.string :serch_name_k
      t.date :update_date
      t.string :update_reason

      t.timestamps
    end
  end
end
