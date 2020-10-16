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
    label: "Agency"
    sql: ${TABLE}.Agency ;;
  }

  dimension: base_pay {
    label: "Base Payment Amount"
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
    sql: ${TABLE}.EmployeeName;;
  }

  dimension: job_title {
    label: "Job Title"
    type: string
    sql: initcap(${TABLE}.JobTitle) ;;
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
    type: string
    sql: ${TABLE}.Year;;
  }

  # measure: count {
  #   type: count
  #   drill_fields: [id, employee_name]
  # }

  dimension: first_digit_base_pay {
    hidden: yes
    type: number
    sql:  to_number(substring(to_string(${salaries.base_pay}),1,1));;
  }

  measure: maximum_base_salary {
    label: "Maximum Base Payment Amount"
    type: max
    sql: ${base_pay};;
  }

  measure: minimum_base_salary {
    label: "Minimum Base Payment Amount"
    type: number
    sql: min(${base_pay});;
  }

  measure: average_base_salary {
    label: "Average Base Payment Amount"
    type: average
    sql: ${base_pay};;
  }

  measure: maximum_benefits {
    label: "Maximum Benefits Amount"
    type: max
    sql: ${benefits};;
  }

  measure: minimum_benefits {
    label: "Minimum Benefits Amount"
    type: number
    sql: min(${benefits});;
  }

  measure: average_benefits {
    label: "Average Benefits Amount"
    type: average
    sql: ${benefits};;
  }

  measure: maximum_overtime_pay {
    label: "Maximum Overtime Payments"
    type: max
    sql: ${overtime_pay};;
  }

  measure: minimum_overtime_pay {
    label: "Minimum Overtime Payments"
    type: number
    sql: min(${overtime_pay});;
  }

  measure: average_overtime_pay {
    label: "Average Overtime Payments"
    type: average
    sql: ${overtime_pay};;
  }
}
