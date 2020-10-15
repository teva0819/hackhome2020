view: writers {
  sql_table_name: `lookerdata.snl_db.writers`
    ;;

  dimension: head_writers {
    type: string
    sql: ${TABLE}.head_writers ;;
  }

  dimension: sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  dimension: writers {
    type: string
    sql: ${TABLE}.writers ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
