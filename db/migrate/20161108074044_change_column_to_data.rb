class ChangeColumnToData < ActiveRecord::Migration
  # 変更内容
  def up
    change_column :data, :temperature, :float
  end

  # 変更前の状態
  def down
    change_column :data, :temperature, :string
  end
end
