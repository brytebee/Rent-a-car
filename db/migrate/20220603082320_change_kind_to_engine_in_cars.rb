class ChangeKindToEngineInCars < ActiveRecord::Migration[7.0]
  def change
    rename_column :cars, :kind, :engine
  end
end
