class AddTwitterColumnsToUsers < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :twitter_uid
      t.string :twitter_oauth_token
      t.string :twitter_secret
    end
  end
end
