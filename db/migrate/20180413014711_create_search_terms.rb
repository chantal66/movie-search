class CreateSearchTerms < ActiveRecord::Migration[5.1]
  def change
    create_table :search_terms do |t|
      t.string :value

      t.timestamps
    end
  end
end
