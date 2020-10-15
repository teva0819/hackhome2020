view: org_entities {
  sql_table_name: `lookerdata.national_parks.org_entities`
    ;;

  dimension: entityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ENTITYID ;;
  }

  dimension: entitytype {
    type: string
    sql: ${TABLE}.ENTITYTYPE ;;
  }

  dimension: orgid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORGID ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
