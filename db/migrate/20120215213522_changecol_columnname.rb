class ChangecolColumnname < ActiveRecord::Migration
  def self.up
  end

  def self.down
  end

  rename_column(:users, :password, password_digest)
end
