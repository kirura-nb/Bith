class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :sex #性別
      t.inteder :age #年齢
      t.string :department #学科
      t.inteder :grade #学年
      t.inteder :hobby #趣味id
      
      t.string :name #名前
      t.string :s_number #学籍番号
      t.string :password #パスワード

      t.timestamps
    end
  end
end
