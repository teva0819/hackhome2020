view: tours {
  sql_table_name: `lookerdata.national_parks.tours`
    ;;
  drill_fields: [tourid]

  dimension: tourid {
    primary_key: yes
    type: number
    sql: ${TABLE}.TOURID ;;
  }

  dimension_group: createddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.CREATEDDATE ;;
  }

  dimension: facilityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.FACILITYID ;;
  }

  dimension_group: lastupdateddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.LASTUPDATEDDATE ;;
  }

  dimension: touraccessible {
    type: yesno
    sql: ${TABLE}.TOURACCESSIBLE ;;
  }

  dimension: tourdescription {
    type: string
    sql: ${TABLE}.TOURDESCRIPTION ;;
  }

  dimension: tourduration {
    type: number
    sql: ${TABLE}.TOURDURATION ;;
  }

  dimension: tourname {
    type: string
    sql: ${TABLE}.TOURNAME ;;
  }

  dimension: tourtype {
    type: string
    sql: ${TABLE}.TOURTYPE ;;
  }

  measure: unique_ids {
    type: count_distinct
    sql: ${tourid} ;;
  }

  measure: count {
    type: count
    drill_fields: [tourid, tourname, member_tours.count]
  }
}
