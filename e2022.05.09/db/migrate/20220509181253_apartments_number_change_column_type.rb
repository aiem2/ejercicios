class ApartmentsNumberChangeColumnType < ActiveRecord::Migration[7.0]
  def change
    change_column :apartments, :number, :string
  end
end
