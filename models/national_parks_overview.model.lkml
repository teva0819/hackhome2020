connection: "lookerdata"

# include all the views
include: "../old_explores/*.explore"

datagroup: national_parks_overview_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: national_parks_overview_default_datagroup
