view: benfords_law {
  derived_table: {
    sql: select s.*, r.predicted_frequency  from
      (select
        cast(substring(cast(IFNULL(cast(regexp_extract(OtherPay, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0) as string),1,1) as int64) as first_digit
      , count(cast(substring(cast(IFNULL(cast(regexp_extract(OtherPay, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0) as string),1,1) as int64))*100/ (Select Count(*) From sfsalary.salaries) as real_frequency
      from sfsalary.salaries
      group by first_digit
      ) s
      inner join (select  digits,
          log(1+(1/digits))/log(10)*100 as predicted_frequency
          from UNNEST(GENERATE_ARRAY(1, 9)) as digits) r
        on r.digits=s.first_digit
       ;;
  }

  dimension: real_frequency {
    label: "Real Frequency, %"
    type: number
    sql: round(${TABLE}.real_frequency,2) ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: job_title {
    label: "Job Title"
    type: string
    sql: ${TABLE}.JobTitle ;;
  }

  dimension: other_pay {
    label: "Additional Payments"
    type: number
    sql:CAST(REPLACE(${TABLE}.OtherPay, 'Not Provided', '0') AS FLOAT64);;
  }

  dimension: year {
    label: "Year"
    type: number
    sql: (${TABLE}.Year AS INT64);;
  }

  dimension: first_digit {
    type: number
    sql: ${TABLE}.first_digit ;;
  }

  dimension: predicted_frequency {
    label: "Predicted Frequency, %"
    type: number
    sql: round(${TABLE}.predicted_frequency,2) ;;
  }

  set: detail {
    fields: [
      id,
      job_title,
      other_pay,
      year,
      first_digit,
      predicted_frequency
    ]
  }
}
