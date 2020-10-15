view: tenure {
  sql_table_name: `lookerdata.snl_db.tenure`
    ;;

  dimension: aid {
    type: string
    sql: ${TABLE}.aid ;;
  }

  dimension: eps_present {
    type: number
    sql: ${TABLE}.eps_present ;;
  }

  dimension: n_episodes {
    type: number
    sql: ${TABLE}.n_episodes ;;
  }

  dimension: n_seasons {
    type: number
    sql: ${TABLE}.n_seasons ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
