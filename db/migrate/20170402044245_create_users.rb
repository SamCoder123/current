class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.attachment :applog
      t.string :applog_path

      t.timestamps
    end
  end
end
