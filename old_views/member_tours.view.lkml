view: member_tours {
  sql_table_name: `lookerdata.national_parks.member_tours`
    ;;

  dimension: membertourid {
    type: number
    value_format_name: id
    sql: ${TABLE}.MEMBERTOURID ;;
  }

  dimension: tourid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.TOURID ;;
  }

  dimension: tourname {
    type: string
    sql: ${TABLE}.TOURNAME ;;
  }

  measure: count {
    type: count
    drill_fields: [tourname, tours.tourname, tours.tourid]
  }
}
