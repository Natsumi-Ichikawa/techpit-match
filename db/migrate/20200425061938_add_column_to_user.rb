class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
     # ==========ここから追加する==========
     add_column :users, :name, :string, null: false, default: '', limit: 100 #名前の空欄を許可しないからnullfalse
     add_column :users, :self_introduction, :string, limit: 500 #自己紹介の最大文字数は５００文字
     add_column :users, :sex, :integer, null: false, default: 0
     add_column :users, :img_name, :string
     # ==========ここまで追加する==========
 
  end
end
