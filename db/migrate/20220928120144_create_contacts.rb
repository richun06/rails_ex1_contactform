class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      #カラムを追加するコードを記述
      t.string :name
      t.string :email
      t.text :content

      #t.timestamps
    end
  end
end
