view: impressions {
  sql_table_name: `lookerdata.snl_db.impressions`
    ;;

  dimension: aid {
    type: string
    sql: ${TABLE}.aid ;;
  }

  dimension: impid {
    type: number
    value_format_name: id
    sql: ${TABLE}.impid ;;
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
