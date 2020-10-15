view: events {
  sql_table_name: `lookerdata.national_parks.events`
    ;;
  drill_fields: [eventid]

  dimension: eventid {
    primary_key: yes
    type: number
    sql: ${TABLE}.EVENTID ;;
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

  dimension: eventadaaccess {
    type: string
    sql: ${TABLE}.EVENTADAACCESS ;;
  }

  dimension: eventagegroup {
    type: string
    sql: ${TABLE}.EVENTAGEGROUP ;;
  }

  dimension: eventcomments {
    type: string
    sql: ${TABLE}.EVENTCOMMENTS ;;
  }

  dimension: eventdescription {
    type: string
    sql: ${TABLE}.EVENTDESCRIPTION ;;
  }

  dimension: eventemail {
    type: string
    sql: ${TABLE}.EVENTEMAIL ;;
  }

  dimension_group: eventenddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EVENTENDDATE ;;
  }

  dimension: eventfeedescription {
    type: string
    sql: ${TABLE}.EVENTFEEDESCRIPTION ;;
  }

  dimension: eventfrequencyratedescription {
    type: string
    sql: ${TABLE}.EVENTFREQUENCYRATEDESCRIPTION ;;
  }

  dimension: eventname {
    type: string
    sql: ${TABLE}.EVENTNAME ;;
  }

  dimension: eventregistrationrequired {
    type: number
    sql: ${TABLE}.EVENTREGISTRATIONREQUIRED ;;
  }

  dimension: eventscopedescription {
    type: string
    sql: ${TABLE}.EVENTSCOPEDESCRIPTION ;;
  }

  dimension_group: eventstartdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.EVENTSTARTDATE ;;
  }

  dimension: eventtypedescription {
    type: string
    sql: ${TABLE}.EVENTTYPEDESCRIPTION ;;
  }

  dimension: eventurladdress {
    type: string
    sql: ${TABLE}.EVENTURLADDRESS ;;
  }

  dimension: eventurltext {
    type: string
    sql: ${TABLE}.EVENTURLTEXT ;;
  }

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

  dimension: sponsorclasstype {
    type: string
    sql: ${TABLE}.SPONSORCLASSTYPE ;;
  }

  dimension: sponsoremail {
    type: string
    sql: ${TABLE}.SPONSOREMAIL ;;
  }

  dimension: sponsorname {
    type: string
    sql: ${TABLE}.SPONSORNAME ;;
  }

  dimension: sponsorphone {
    type: string
    sql: ${TABLE}.SPONSORPHONE ;;
  }

  dimension: sponsorurladdress {
    type: string
    sql: ${TABLE}.SPONSORURLADDRESS ;;
  }

  dimension: sponsorurltext {
    type: string
    sql: ${TABLE}.SPONSORURLTEXT ;;
  }

  measure: count {
    type: count
    drill_fields: [eventid, eventname, sponsorname]
  }
}
