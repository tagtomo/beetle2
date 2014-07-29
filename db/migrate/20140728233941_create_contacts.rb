class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :number
      t.string :data_type
      t.string :department
      t.string :name
      t.string :phone_no
      t.string :fax_no
      t.string :e_mail
      t.string :note

      t.timestamps
    end
  end
end
