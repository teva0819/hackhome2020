view: episodes {
  sql_table_name: `lookerdata.snl_db.episodes`
    ;;

  dimension: aired {
    hidden: yes
    type: string
    sql: ${TABLE}.aired ;;
  }

  dimension: aired_date {
    sql: ${aired} ;;
    html: {{ rendered_value | date: "%B %e, %Y" }} ;;
  }

  dimension: years {
    group_label: "Aired Date" label: "Year"
    sql: ${aired_date} ;;
    html: {{ rendered_value | date: "%Y" }};;
  }

  dimension: month {
    group_label: "Aired Date" label: "Month"
    sql: ${aired_date} ;;
    html: {{ rendered_value | date: "%B" }};;
  }

  dimension: day {
    group_label: "Aired Date" label: "Day"
    sql: ${aired_date} ;;
    html: {{ rendered_value | date: "%e" }};;
  }

  # dimension: year {
  #   sql: ${aired_date} ;;
  #   html: {{ rendered_value | date: "%Y" }};;
  # }

  dimension: epid {
    type: number
    value_format_name: id
    sql: ${TABLE}.epid ;;
  }

  dimension: epno {
    type: number
    sql: ${TABLE}.epno ;;
  }

  dimension: sid {
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
