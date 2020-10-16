view: top_salary_statistics {
    derived_table: {
      sql: select Year, JobTitle,
           max(IFNULL(cast(regexp_extract(BasePay, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0)) as maximum_base_salary,
           min(IFNULL(cast(regexp_extract(BasePay, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0)) as minimum_base_salary,
           avg(IFNULL(cast(regexp_extract(BasePay, r'^[0-9]*(?:\.[0-9]*)?$') as float64), 0)) as average_base_salary
from sfsalary.salaries
group by Year, JobTitle;;
    }

    dimension: job_title {
      label: "Job Title"
      type: string
      sql: ${TABLE}.JobTitle ;;
    }

    dimension: maximum_base_salary {
      type: number
      sql: ${TABLE}.maximum_base_salary ;;
    }

    dimension: minimum_base_salary {
      type: number
      sql: ${TABLE}.minimum_base_salary ;;
    }

    dimension: average_base_salary {
      type: number
      sql: ${TABLE}.average_base_salary ;;
    }

    dimension: year {
      label: "Year"
      type: number
     sql: (${TABLE}.Year AS INT64);;
    }

  }
