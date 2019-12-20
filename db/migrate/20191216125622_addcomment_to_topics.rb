class AddcommentToTopics < ActiveRecord::Migration[5.2]
  def change
    add_column :topics, :comment, :text
  end
end
