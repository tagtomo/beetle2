class CreateBgKihons < ActiveRecord::Migration
  def change
    create_table :bg_kihons do |t|
      t.string :number
      t.string :kazei_type
      t.string :toriatukaitabako_type
      t.string :tokureitabako_type
      t.string :send_type
      t.date :stop_sdate
      t.date :stop_edate
      t.date :chenge_date
      t.string :change_jiyu

      t.timestamps
    end
  end
end
