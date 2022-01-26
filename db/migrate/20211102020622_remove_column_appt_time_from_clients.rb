class RemoveColumnApptTimeFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :apptTime
  end
end
