view: facilities {
  sql_table_name: `lookerdata.national_parks.facilities`
    ;;
  drill_fields: [facilityid]

  dimension: facilityid {
    primary_key: yes
    type: number
    sql: ${TABLE}.FACILITYID ;;
  }

  dimension: facilityadaaccess {
    type: string
    sql: ${TABLE}.FACILITYADAACCESS ;;
  }

  dimension: facilitydescription {
    type: string
    sql: ${TABLE}.FACILITYDESCRIPTION ;;
  }

  dimension: facilitydirections {
    type: string
    sql: ${TABLE}.FACILITYDIRECTIONS ;;
  }

  dimension: facilityemail {
    type: string
    sql: ${TABLE}.FACILITYEMAIL ;;
  }

  dimension: facilitylatitude {
    view_label: "Locations"
    hidden: yes
    type: number
    sql: ${TABLE}.FACILITYLATITUDE ;;
  }

  dimension: facilitylongitude {
    view_label: "Locations"
    hidden: yes
    type: number
    sql: ${TABLE}.FACILITYLONGITUDE ;;
  }

  dimension: location {
    view_label: "Locations"
    label: "Facilities Map Point Location"
    type: location
    sql_latitude: ${facilitylatitude} ;;
    sql_longitude: ${facilitylongitude} ;;
  }

  dimension: facilitymapurl {
    view_label: "Locations"
    type: string
    sql: ${TABLE}.FACILITYMAPURL ;;
  }

  dimension: facilityname {
    type: string
    sql: ${TABLE}.FACILITYNAME ;;
  }

  dimension: facilityphone {
    type: string
    sql: ${TABLE}.FACILITYPHONE ;;
  }

  dimension: facilityreservationurl {
    type: string
    sql: ${TABLE}.FACILITYRESERVATIONURL ;;
  }

  dimension: facilitytypedescription {
    type: string
    sql: ${TABLE}.FACILITYTYPEDESCRIPTION ;;
  }

  dimension: facilityusefeedescription {
    type: string
    sql: ${TABLE}.FACILITYUSEFEEDESCRIPTION ;;
  }

  dimension: keywords {
    type: string
    sql: ${TABLE}.KEYWORDS ;;
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

  dimension: legacyfacilityid {
    type: string
    sql: ${TABLE}.LEGACYFACILITYID ;;
  }

  dimension: orgfacilityid {
    type: string
    sql: ${TABLE}.ORGFACILITYID ;;
  }

  dimension: staylimit {
    type: string
    sql: ${TABLE}.STAYLIMIT ;;
  }

  measure: count {
    type: count
    drill_fields: [facilityid, facilityname]
  }
}
