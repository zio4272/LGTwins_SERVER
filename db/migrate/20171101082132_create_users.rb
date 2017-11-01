class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :loginId
      t.string :loginPw
      t.string :userName
      # t.string :phoneNum
      # t.string :email
      # t.string :profileURL
      t.timestamps
    end
  end
end
