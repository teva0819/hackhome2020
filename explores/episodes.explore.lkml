include: "../views/*.view"
explore: episodes {
  view_name: episodes
  view_label: "Episodes"
  group_label: "SNL"
  join: episode_ratings {
    type: inner
    view_label: "Ratings"
    sql_on: ${episodes.epno} = ${episode_ratings.epno}
      and ${episodes.sid} = ${episode_ratings.sid};;
    relationship: many_to_one
  }
}
