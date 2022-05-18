class ChangeDefaultValueForDate < ActiveRecord::Migration[7.0]
  def change
    change_column_default :concerts, :date, "0000-00-0 00:00:00 UTC"
  end
end
