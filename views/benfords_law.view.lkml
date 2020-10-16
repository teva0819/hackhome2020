view: benfords_law {
  dimension: digits {
    primary_key: yes
    type: number
    sql:UNNEST(GENERATE_ARRAY(1, 9)) ;;
  }
 ## measure: predicted_frequecy {
  ##  type: number
  ##  sql: SELECT log(1+(1/${digits}))/log(10)*100 FROM UNNEST(GENERATE_ARRAY(1, 9));;
 ## }
}
