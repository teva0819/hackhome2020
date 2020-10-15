include: "../old_views/*.view"

explore: facilities {
  view_label: "Facilities"
  label: "National Parks Overview"
  view_name: facilities

  join: campsites {
    type: left_outer
    view_label: "Camp sites"
    sql_on: ${facilities.facilityid} = ${campsites.facilityid} ;;
    relationship: many_to_one
  }

  join: facility_addresses {
    type: left_outer
    view_label: "Locations"
    sql_on: ${facilities.facilityid} = ${facility_addresses.facilityid} ;;
    relationship: many_to_one
  }

  join: permit_entrances {
    type: left_outer
    view_label: "Permit Entrances"
    sql_on: ${facilities.facilityid} = ${permit_entrances.facilityid} ;;
    relationship: many_to_one
  }

#  join: rec_area_facilities {
#     type: left_outer
#     view_label: "Rec Area"
#     sql_on: ${facilities.facilityid} = ${rec_area_facilities.facilityid} ;;
#     relationship: many_to_one
#   }

  join: tours {
    type: left_outer
    view_label: "Tours"
    sql_on: ${facilities.facilityid} = ${tours.facilityid} ;;
    relationship: many_to_one
  }

  join: permitted_equipment {
    type: left_outer
    view_label: "Camp sites"
    sql_on: ${permitted_equipment.campsiteid} = ${campsites.campsiteid} ;;
    relationship: many_to_one
  }

}
