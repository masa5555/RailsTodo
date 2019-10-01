class CreateMusts < ActiveRecord::Migration[6.0]
  def change
    create_table :musts do |t|
      t.string :task
      t.string :deadline

      t.timestamps
    end
  end
end
