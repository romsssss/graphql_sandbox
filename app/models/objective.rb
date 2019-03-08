class Objective < ApplicationRecord
  validates :title, presence: true

  has_many :steps, inverse_of: :objective, foreign_key: :objective_id, dependent: :destroy

  scope :not_ended, -> { where(ended_at: nil) }
end
