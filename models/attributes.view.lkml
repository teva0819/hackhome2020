view: attributes {
  sql_table_name: `lookerdata.national_parks.attributes`
    ;;
  drill_fields: [attributeid]

  dimension: attributeid {
    primary_key: yes
    type: number
    sql: ${TABLE}.ATTRIBUTEID ;;
  }

  dimension: attributename {
    type: string
    sql: ${TABLE}.ATTRIBUTENAME ;;
  }

  dimension: attributevalue {
    type: string
    sql: ${TABLE}.ATTRIBUTEVALUE ;;
  }

  dimension: entityid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ENTITYID ;;
  }

  dimension: entitytype {
    type: string
    sql: ${TABLE}.ENTITYTYPE ;;
  }

  measure: count {
    type: count
    drill_fields: [attributeid, attributename]
  }
}
