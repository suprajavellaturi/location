Tabulous.setup do

  tabs do

    groups_tab do
      text          { 'Groups' }
      link_path     { groups_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('groups') }
    end

    friendships_tab do
      text          { 'Friendships' }
      link_path     { friendships_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('friendships') }
    end

    #profiles_tab do
      #text          { 'Profiles' }
     # link_path     { profiles_path }
      #visible_when  { true }
      #enabled_when  { true }
      #active_when   { in_action('any').of_controller('profiles') }
    #end

    friends_tab do
      text          { 'Friends' }
      link_path     { friends_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('friends') }
    end

   # dashboards_tab do
      #text          { 'Dashboards' }
     # link_path     { dashboards_path }
      #visible_when  { true }
      #enabled_when  { true }
      #active_when   { in_action('any').of_controller('dashboards') }
    #end

    locations_tab do
      text          { 'Locations' }
      link_path     { locations_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('locations') }
    end

    users_tab do
      text          { 'Users' }
      link_path     { root_path }
      visible_when  { true }
      enabled_when  { true }
      active_when   { in_action('any').of_controller('users') }
    end

  end

  customize do

    # which class to use to generate HTML
    # :default, :html5, :bootstrap, :bootstrap_pill or :bootstrap_navbar
    # or create your own renderer class and reference it here
    # renderer :default

    # whether to allow the active tab to be clicked
    # defaults to true
    # active_tab_clickable true

    # what to do when there is no active tab for the current controller action
    # :render -- draw the tabset, even though no tab is active
    # :do_not_render -- do not draw the tabset
    # :raise_error -- raise an error
    # defaults to :do_not_render
    # when_action_has_no_tab :do_not_render

    # whether to always add the HTML markup for subtabs, even if empty
    # defaults to false
    # render_subtabs_when_empty false

  end

  # The following will insert some CSS straight into your HTML so that you
  # can quickly prototype an app with halfway-decent looking tabs.
  #
  # This scaffolding should be turned off and replaced by your own custom
  # CSS before using tabulous in production.
  use_css_scaffolding do
    background_color '#6666ccc'
    text_color '#444'
    active_tab_color '#DDF292'
    hover_tab_color '#ddd'
    inactive_tab_color '#C194A7'
    inactive_text_color '#888'
  end

end
