class AddUrlToHowtos < ActiveRecord::Migration[5.2]
  def change
    add_column :howtos, :url, :text
  end
end
