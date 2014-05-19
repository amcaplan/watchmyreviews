class ChangeOauthColumnNamesInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :oauth_expires_at, :fb_oauth_expires_at
    rename_column :users, :oauth_token, :fb_oauth_token
    rename_column :users, :uid, :fb_uid
  end
end
