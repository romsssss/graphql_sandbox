module Types
  class TaskType < BaseObject
    field :id, ID, null: false
    field :title, String, null: false
    field :position, Integer, null: true
    field :ended_at, String, null: true
    field :status, String, null: false
    field :step, StepType, null: false, method: :step
  end
end
