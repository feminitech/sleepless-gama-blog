class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :nome
      t.string :email
      t.string :comentario
      t.string :ip

      t.timestamps
    end
  end
end
