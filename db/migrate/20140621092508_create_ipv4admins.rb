class CreateIpv4admins < ActiveRecord::Migration
  def change
    create_table :ipv4admins do |t|
      t.integer :ip_statu
      t.string :ip_address
      t.string :Host
      t.string :Note

      t.timestamps
    end
  end
end
