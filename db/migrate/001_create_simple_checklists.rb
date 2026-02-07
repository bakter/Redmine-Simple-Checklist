class CreateSimpleChecklists < ActiveRecord::Migration[7.0]
  def change
    create_table :simple_checklists do |t|
      # Instead of using t.references, we define the integer type manually
      # to ensure it exactly matches the Redmine issues table
      t.integer :issue_id, null: false
      t.string :subject, null: false
      t.boolean :is_done, default: false, null: false
      t.timestamps
    end

    # Add an index for faster lookups
    add_index :simple_checklists, :issue_id

    # If MySQL still complains, it may be better to omit the foreign key constraint
    # and rely only on the index:
    # add_foreign_key :simple_checklists, :issues
  end
end
