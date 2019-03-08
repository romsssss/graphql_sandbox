class Step < ApplicationRecord
  validates :title, :status, :objective, presence: true

  belongs_to :objective, foreign_key: :objective_id, inverse_of: :steps
  has_many :tasks, foreign_key: :step_id, inverse_of: :step, dependent: :destroy

  # acts_as_list scope: :user_objective_id, top_of_list: 1, add_new_at: :bottom

  enum status: { pending: 'pending', completed: 'completed' }
end
