view: permit_entrance_zones {
  sql_table_name: `lookerdata.national_parks.permit_entrance_zones`
    ;;

  dimension: permitentranceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PERMITENTRANCEID ;;
  }

  dimension: permitentrancezoneid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PERMITENTRANCEZONEID ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.ZONE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
