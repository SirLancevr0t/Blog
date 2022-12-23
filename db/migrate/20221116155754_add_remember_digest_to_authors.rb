class AddRememberDigestToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :remember_digest, :string
  end
end
