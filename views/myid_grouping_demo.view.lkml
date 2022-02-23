# The name of this view in Looker is "Myid Grouping Demo"
view: myid_grouping_demo {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `monotaro_demo.myid_grouping_demo`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Create Time" in Explore.

  dimension: create_time {
    type: string
    sql: ${TABLE}.create_time ;;
  }

  dimension: filter_field {
    type: string
    sql: ${TABLE}.filter_field ;;
  }

  dimension: grouping_key {
    type: string
    sql: ${TABLE}.grouping_key ;;
  }

  dimension: id_list {
    type: string
    sql: ${TABLE}.id_list ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: id_list_nested {
    hidden: yes
    sql: ${TABLE}.id_list_nested ;;
  }

  dimension: who {
    type: string
    sql: ${TABLE}.who ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  # dimension_group: created {
  #   type:time
  #   label: "Created"
  #   sql: CAST(${TABLE}.create_time AS DATE) ;;
  # }
}

# The name of this view in Looker is "Myid Grouping Demo ID List Nested"
view: myid_grouping_demo__id_list_nested {
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ids" in Explore.

  dimension: ids {
    type: string
    sql: ids ;;
  }

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: myid_grouping_demo__id_list_nested {
    type: string
    hidden: yes
    sql: myid_grouping_demo__id_list_nested ;;
  }









}
