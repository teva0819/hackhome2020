view: media {
  sql_table_name: `lookerdata.national_parks.media`
    ;;
  drill_fields: [entitymediaid]

  dimension: entitymediaid {
    primary_key: yes
    type: number
    sql: ${TABLE}.ENTITYMEDIAID ;;
  }

  dimension: credits {
    type: string
    sql: ${TABLE}.CREDITS ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: embedcode {
    type: string
    sql: ${TABLE}.EMBEDCODE ;;
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

  dimension: height {
    type: number
    sql: ${TABLE}.HEIGHT ;;
  }

  dimension: mediatype {
    type: string
    sql: ${TABLE}.MEDIATYPE ;;
  }

  dimension: subtitle {
    type: string
    sql: ${TABLE}.SUBTITLE ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}.TITLE ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.URL ;;
  }

  dimension: width {
    type: number
    sql: ${TABLE}.WIDTH ;;
  }

  measure: count {
    type: count
    drill_fields: [entitymediaid]
  }
}
