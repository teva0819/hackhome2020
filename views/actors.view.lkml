view: actors {
  sql_table_name: `lookerdata.snl_db.actors`
    ;;

  dimension: aid {
    type: string
    sql: ${TABLE}.aid ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
