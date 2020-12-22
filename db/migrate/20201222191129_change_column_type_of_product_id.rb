class ChangeColumnTypeOfProductId < ActiveRecord::Migration[6.0]
  def change
    change_column :reviews, :product_id, :string
  end
end
