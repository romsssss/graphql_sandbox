class Task < ApplicationRecord
  validates :title, :status, :step, presence: true

  belongs_to :step, inverse_of: :tasks, foreign_key: :step_id

  # acts_as_list scope: :user_step_id, top_of_list: 1, add_new_at: :bottom

  enum status: { pending: 'pending', completed: 'completed', dropped: 'dropped' }
end
