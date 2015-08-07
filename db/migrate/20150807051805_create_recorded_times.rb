class CreateRecordedTimes < ActiveRecord::Migration
  def change
    create_table :recorded_times do |t|
      t.string :number

      t.timestamps
    end
  end
end
