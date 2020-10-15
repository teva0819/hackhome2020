view: permitted_equipment {
  sql_table_name: `lookerdata.national_parks.permitted_equipment`
    ;;

  dimension: campsiteid {
    type: number
    value_format_name: id
    hidden: yes
    sql: ${TABLE}.CAMPSITEID ;;
  }

  dimension: equipmentname {
    label: "Permitted Equipment"
    type: string
    sql: ${TABLE}.EQUIPMENTNAME ;;
  }

  dimension: maxlength {
    hidden: yes
    type: number
    sql: ${TABLE}.MAXLENGTH ;;
  }

  measure: count {
    type: count
    drill_fields: [equipmentname, campsites.campsiteid, campsites.campsitename]
  }
}
