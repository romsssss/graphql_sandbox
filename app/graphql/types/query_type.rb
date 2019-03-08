module Types
  class QueryType < Types::BaseObject
    # queries are just represented as fields
    # `all_links` is automatically camelcased to `allLinks`
    field :all_links, [LinkType], null: false
    field :all_objectives, [ObjectiveType], null: false
    field :all_steps, [StepType], null: false
    field :all_tasks, [TaskType], null: false

    # this method is invoked, when `all_link` fields is beeing resolved
    def all_links
      Link.all
    end

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
