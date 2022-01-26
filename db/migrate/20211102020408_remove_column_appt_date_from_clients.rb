class RemoveColumnApptDateFromClients < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :apptDate
  end
end
