# This migration comes from barbeque (originally 20160412083604)
class AddFinishedAtToJobExecutions < ActiveRecord::Migration[5.0]
  def change
    add_column :job_executions, :finished_at, :datetime
  end
end
