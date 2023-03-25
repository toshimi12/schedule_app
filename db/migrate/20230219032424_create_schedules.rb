class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.string :title
      t.datetime :start_at
      t.datetime :end_at
      t.boolean :allday
      t.string :memo

      t.timestamps
    end
  end
end
