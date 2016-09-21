# This migration comes from barbeque (originally 20160225020801)
class AddJobDefinitionIdToJobExecutions < ActiveRecord::Migration[5.0]
  def change
    add_column :job_executions, :job_definition_id, :integer
    add_index :job_executions, [:job_definition_id]
  end
end
