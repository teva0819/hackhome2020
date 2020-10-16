include: "../views/benfords_law.view"
include: "../views/salaries.view"

explore: salaries_statistics {
  view_name: salaries
  view_label: "San Francisco Salaries"
  group_label: "If you're going to San Francisco"

  join: benfords_law {
    type: inner
    view_label: "Benfords Law"
    sql_on: ${salaries.id} = ${benfords_law.id};;
    relationship: many_to_one
}
}
