class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :provider, default: 'facebook'
      t.string :oauth_expires_at
      t.string :oauth_token
      t.string :twitter_handle

      t.timestamps
    end
  end
end
