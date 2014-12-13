class CreateBgKazeis < ActiveRecord::Migration
  def change
    create_table :bg_kazeis do |t|
      t.string :number
      t.string :kazei_number
      t.string :sotonendo
      t.string :soto_y
      t.string :kazeinendo
      t.string :kazei_y
      t.string :declaration_type
      t.string :declaration_date

      t.timestamps
    end
  end
end
