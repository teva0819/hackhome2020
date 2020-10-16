view: salaries {
  sql_table_name: `lookerdata.sfsalary.salaries` ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension: agency {
    type: string
    label: "Agengy"
    sql: ${TABLE}.Agency ;;
  }

  dimension: base_pay {
    label: "Base payment amount"
    type: number
    sql:IFNULL(cast(regexp_extract(${TABLE}.BasePay, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0);;
  }

  dimension: benefits {
    label: "Benefits"
    type: number
    sql: IFNULL(cast(regexp_extract(${TABLE}.Benefits, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0);;
  }

  dimension: employee_name {
    label: "Employee Name"
    type: string
    sql: ${TABLE}.EmployeeName ;;
  }

  dimension: job_title {
    label: "Job Title"
    type: string
    sql: ${TABLE}.JobTitle ;;
  }

  dimension: notes {
    label: "Notes"
    type: string
    sql: ${TABLE}.Notes ;;
  }

  dimension: other_pay {
    label: "Additional Payments"
    type: number
    sql:CAST(REPLACE(${TABLE}.OtherPay, 'Not Provided', '0') AS FLOAT64);;
  }

  dimension: overtime_pay {
    label: "Overtime Payments"
    type: number
    sql: CAST(REPLACE(${TABLE}.OvertimePay, 'Not Provided', '0') AS FLOAT64);;
  }

  dimension: status {
    label: "Work Schedule"
    description: "Shows if employee works Part-time, Full-time or information is not provided"
    type: string
    sql: CASE WHEN ${TABLE}.Status = 'FT' THEN "Full-time"
              WHEN ${TABLE}.Status = 'PT' THEN "Part-time"
              ELSE "Not provided" END;;
  }

  dimension: total_pay {
    label: "Total Payments"
    type: number
    sql: CAST(${TABLE}.TotalPay AS FLOAT64);;
  }

  dimension: total_pay_benefits {
    label: "Total Benefit Payments"
    type: number
    sql: CAST(${TABLE}.TotalPayBenefits AS FLOAT64) ;;
  }

  dimension: year {
    label: "Year"
    type: number
    sql: (${TABLE}.Year AS INT64);;
  }

  measure: count {
    type: count
    drill_fields: [id, employee_name]
  }
}
