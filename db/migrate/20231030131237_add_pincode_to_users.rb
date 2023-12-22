class AddPincodeToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :pincode, :string
  end
end
