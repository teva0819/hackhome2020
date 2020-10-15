view: campsites {
  sql_table_name: `lookerdata.national_parks.campsites`
    ;;
  drill_fields: [campsiteid]

  dimension: campsiteid {
    primary_key: yes
    type: number
    sql: ${TABLE}.CAMPSITEID ;;
  }

  dimension: campsiteaccessible {
    type: yesno
    sql: ${TABLE}.CAMPSITEACCESSIBLE ;;
  }

  dimension: campsitename {
    type: string
    sql: ${TABLE}.CAMPSITENAME ;;
  }

  dimension: campsitetype {
    type: string
    sql: ${TABLE}.CAMPSITETYPE ;;
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
    hidden: yes
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

  dimension: loop {
    type: string
    sql: ${TABLE}.LOOP ;;
  }

  dimension: typeofuse {
    type: string
    sql: ${TABLE}.TYPEOFUSE ;;
  }

  measure: count {
    type: count
    drill_fields: [campsiteid, campsitename, permitted_equipment.count]
  }
}
