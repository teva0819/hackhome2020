view: characters {
  sql_table_name: `lookerdata.snl_db.characters`
    ;;

  dimension: aid {
    type: string
    sql: ${TABLE}.aid ;;
  }

  dimension: charid {
    type: number
    value_format_name: id
    sql: ${TABLE}.charid ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
