class ChangeLanguageBoolean < ActiveRecord::Migration[6.1]
  def change
    change_column_default :movies, :english, :true
  end
end
