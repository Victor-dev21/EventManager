class AddOriginalCreatorToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :creator, :integer
  end
end
