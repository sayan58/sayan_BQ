# Define the database connection to be used for this model.
connection: "no_touchy_bug_repro"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: bq_sayan_porj_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bq_sayan_porj_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Bq Sayan Porj"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: item_name {}

explore: myid_grouping_demo {
  join: myid_grouping_demo__id_list_nested {
    view_label: "Myid Grouping Demo: Id List Nested"
    sql: LEFT JOIN UNNEST(${myid_grouping_demo.id_list_nested}) as myid_grouping_demo__id_list_nested ;;
    relationship: one_to_many
  }
}
