class CreateSpreeNewsletterRecipients < ActiveRecord::Migration
  def change
    create_table :spree_newsletter_recipients do |t|
      t.string :email
      t.boolean :active

      t.timestamps null: false
    end
  end
end
