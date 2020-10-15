view: episode_ratings {
  sql_table_name: `lookerdata.snl_db.episode_ratings`
    ;;

  dimension: score_1 {
    type: number
    sql: ${TABLE}._1 ;;
  }

  dimension: score_10 {
    type: number
    sql: ${TABLE}._10 ;;
  }

  dimension: score_2 {
    type: number
    sql: ${TABLE}._2 ;;
  }

  dimension: score_3 {
    type: number
    sql: ${TABLE}._3 ;;
  }

  dimension: score_4 {
    type: number
    sql: ${TABLE}._4 ;;
  }

  dimension: score_5 {
    type: number
    sql: ${TABLE}._5 ;;
  }

  dimension: score_6 {
    type: number
    sql: ${TABLE}._6 ;;
  }

  dimension: score_7 {
    type: number
    sql: ${TABLE}._7 ;;
  }

  dimension: score_8 {
    type: number
    sql: ${TABLE}._8 ;;
  }

  dimension: score_9 {
    type: number
    sql: ${TABLE}._9 ;;
  }

  dimension: average_all {
    type: number
    sql: ${TABLE}.Average_All ;;
  }

  dimension: average_females {
    type: number
    sql: ${TABLE}.Average_Females ;;
  }

  dimension: average_males {
    type: number
    sql: ${TABLE}.Average_Males ;;
  }

  dimension: counts_all {
    type: number
    sql: ${TABLE}.Counts_All ;;
  }

  dimension: counts_females {
    type: number
    sql: ${TABLE}.Counts_Females ;;
  }

  dimension: counts_males {
    type: number
    sql: ${TABLE}.Counts_Males ;;
  }

  dimension: epno {
    hidden: yes
    type: number
    sql: ${TABLE}.epno ;;
  }

  dimension: sid {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.sid ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
