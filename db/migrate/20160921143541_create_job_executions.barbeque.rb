# This migration comes from barbeque (originally 20160219010912)
class CreateJobExecutions < ActiveRecord::Migration[5.0]
  def change
    create_table :job_executions, options: 'ENGINE=InnoDB ROW_FORMAT=dynamic DEFAULT CHARSET=utf8mb4' do |t|
      t.string :message_id, null: false, limit: 128
      t.integer :status, null: false, default: 0

      t.timestamps
    end
    add_index :job_executions, [:message_id], unique: true
  end
end
