view: rec_area_facilities {
  sql_table_name: `lookerdata.national_parks.rec_area_facilities`
    ;;

  dimension: facilityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FACILITYID ;;
  }

  dimension: recareaid {
    type: number
    value_format_name: id
    sql: ${TABLE}.RECAREAID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
