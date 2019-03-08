Link.destroy_all
Link.create url: 'http://graphql.org/', description: 'The Best Query Language'
Link.create url: 'http://dev.apollodata.com/', description: 'Awesome GraphQL Client'


Objective.destroy_all
Step.destroy_all
Task.destroy_all

# Objective
objective = Objective.create!(
  title: "Devenir freelance et obtenir mon premier client",
)

# STEP 1
step_1 = Step.create!(
  title: "Réaliser l'étude de mon persona",
  objective: objective,
  status: :completed,
  ended_at: Time.now - 2.weeks
)

Task.create!(
  title: "Rédiger les traits et personnalités de mon persona",
  step: step_1,
  status: :completed,
  ended_at: Time.now - 3.weeks,
)

Task.create!(
  title: "Faire le comparatif des 3 sites concurrents principaux",
  step: step_1,
  status: :completed,
  ended_at: Time.now - 4.weeks,
)

# STEP 2
step_2 = Step.create!(
  title: "Lancer l'acquisition de leads",
  objective: objective,
  status: :pending
)

Task.create!(
  title: "Créer un lead magnet",
  content: "Le lead magnet consite à te crée une base de clients potentiels via ton email.",
  resources: ["https://www.livementor.com/llead-magnet"],
  step: step_2,
  status: :pending,
)

Task.create!(
  title: "Plannifier mon agenda de newsletters",
  step: step_2,
  status: :pending,
)

Task.create!(
  title: "Définir ma ligne éditoriale",
  step: step_2,
  status: :pending,
)

# STEP 3
step_3 = Step.create!(
  title: "Créer une communauté Instagram",
  objective: objective,
  status: :pending
)
