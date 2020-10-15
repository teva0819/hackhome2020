view: permit_entrances {
  sql_table_name: `lookerdata.national_parks.permit_entrances`
    ;;

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

  dimension: district {
    type: string
    sql: ${TABLE}.DISTRICT ;;
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

  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: permitentranceaccessible {
    type: yesno
    sql: ${TABLE}.PERMITENTRANCEACCESSIBLE ;;
  }

  dimension: permitentrancedescription {
    type: string
    sql: ${TABLE}.PERMITENTRANCEDESCRIPTION ;;
  }

  dimension: permitentranceid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PERMITENTRANCEID ;;
  }

  dimension: permitentrancename {
    type: string
    sql: ${TABLE}.PERMITENTRANCENAME ;;
  }

  dimension: permitentrancetype {
    type: string
    sql: ${TABLE}.PERMITENTRANCETYPE ;;
  }

  dimension: town {
    type: string
    sql: ${TABLE}.TOWN ;;
  }

  measure: count {
    type: count
    drill_fields: [permitentrancename]
  }
}
