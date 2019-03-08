module Types
  class QueryType < Types::BaseObject
    # queries are just represented as fields
    # `all_objectives` is automatically camelcased to `allObjectives`
    field :all_objectives, [ObjectiveType], null: false
    field :all_steps, [StepType], null: false
    field :all_tasks, [TaskType], null: false

    # this method is invoked, when `all_objectives` fields is beeing resolved
    def all_objectives
      Objective.all
    end

    def all_steps
      Task.all
    end

    def all_tasks
      Task.all
    end
  end
end
