include: "../views/*.view"
explore: salaries {
  view_name: salaries
  view_label: "San Francisco Salaries"
  group_label: "If you're going to San Francisco"

  join: benfords_law {
    type: left_outer
    view_label: "Benford's Law Frequency Prediction"
    sql_on: ${salaries.first_digit_base_pay}=${benfords_law.digits} ;;
  }
}
