view: facility_addresses {
  sql_table_name: `lookerdata.national_parks.facility_addresses`
    ;;

  dimension: addresscountrycode {
    type: string
    sql: ${TABLE}.ADDRESSCOUNTRYCODE ;;
  }

  dimension: addressstatecode {
    type: string
    sql: ${TABLE}.ADDRESSSTATECODE ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.CITY ;;
  }

  dimension: facilityaddressid {
    type: string
    sql: ${TABLE}.FACILITYADDRESSID ;;
  }

  dimension: facilityaddresstype {
    type: string
    sql: ${TABLE}.FACILITYADDRESSTYPE ;;
  }

  dimension: facilityid {
    type: string
    sql: ${TABLE}.FACILITYID ;;
  }

  dimension: facilitystreetaddress1 {
    type: string
    sql: ${TABLE}.FACILITYSTREETADDRESS1 ;;
  }

  dimension: facilitystreetaddress2 {
    type: string
    sql: ${TABLE}.FACILITYSTREETADDRESS2 ;;
  }

  dimension: facilitystreetaddress3 {
    type: string
    sql: ${TABLE}.FACILITYSTREETADDRESS3 ;;
  }

  dimension: postalcode {
    type: string
    sql: ${TABLE}.POSTALCODE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
