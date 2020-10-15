view: organizations {
  sql_table_name: `lookerdata.national_parks.organizations`
    ;;

  dimension_group: lastupdateddate {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.LASTUPDATEDDATE ;;
  }

  dimension: orgabbrevname {
    type: string
    sql: ${TABLE}.ORGABBREVNAME ;;
  }

  dimension: orgid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORGID ;;
  }

  dimension: orgimageurl {
    type: string
    sql: ${TABLE}.ORGIMAGEURL ;;
  }

  dimension: orgjurisdictiontype {
    type: string
    sql: ${TABLE}.ORGJURISDICTIONTYPE ;;
  }

  dimension: orgname {
    type: string
    sql: ${TABLE}.ORGNAME ;;
  }

  dimension: orgparentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ORGPARENTID ;;
  }

  dimension: orgtype {
    type: string
    sql: ${TABLE}.ORGTYPE ;;
  }

  dimension: orgurladdress {
    type: string
    sql: ${TABLE}.ORGURLADDRESS ;;
  }

  dimension: orgurltext {
    type: string
    sql: ${TABLE}.ORGURLTEXT ;;
  }

  measure: count {
    type: count
    drill_fields: [orgabbrevname, orgname]
  }
}
