class CreateAddressees < ActiveRecord::Migration
  def change
    create_table :addressees do |t|
      t.string :number
      t.string :data_type
      t.string :name
      t.string :zipno
      t.string :address1_cd
      t.string :address2_cd
      t.string :address3_cd
      t.string :address4_cd
      t.string :address5_cd
      t.string :address
      t.string :address_kata
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
