class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.string :number
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
