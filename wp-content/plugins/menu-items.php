<?php
/*
Plugin Name: Menu Items
Plugin URI: https://tresahorney.com
Description: Declares a plugin that will create a custom post type displaying menu items.
Version: 1.0
Author: Tresa Horney
Author URI: https://tresahorney.com
License: GPLv2
*/

/* Create Custom Post Type: Breakfast menu item */
function cw_post_type_breakfast() {
 
    $supports = array(
        'title', // post title
        'editor', // post content
        'author', // post author
        'thumbnail', // featured images
        'excerpt', // post excerpt
        'custom-fields', // custom fields
        'comments', // post comments
        'revisions', // post revisions
        'post-formats', // post formats
        'taxonomies', // post formats
    );
    $labels = array(
        'name' => __('Breakfast Menu Items', 'plural'),
        'singular_name' => __('Breakfast Menu Item','singular'),
        'menu_name' => _x('Breakfast Menu', 'admin menu'),
        'name_admin_bar' => _x('Breakfast Menu Items', 'admin bar'),
        'add_new' => _x('Add New', 'add new'),
        'add_new_item' => __('Add New Breakfast Menu Item'),
        'new_item' => __('New Breakfast Menu Item'),
        'edit_item' => __('Edit Breakfast Menu Item'),
        'view_item' => __('View Breakfast Menu Items'),
        'all_items' => __('All Breakfast Menu Items'),
        'search_items' => __('Search Breakfast Menu Items'),
        'not_found' => __('No Breakfast Menu Items found.'),
    );
    $args = array(
        'supports' => $supports,
        'labels' => $labels,
        'taxonomies' => array( 'specials','food_types','post_tag', 'category'),
        'public' => true,
        'query_var' => true,
        'menu_icon'   => 'dashicons-carrot',
        'menu_position' => '3',
        'rewrite' => array('slug' => 'breakfast-menu'),
        'has_archive' => false,
        'hierarchical' => true,

        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => false,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
        'register_meta_box_cb' => 'wpt_add_price_metaboxes',
    );
    register_post_type('breakfast menu item', $args);

    register_taxonomy( 'menu_tag', /* register custom taxonomy - tag*/ 'breakfast menu item', array(
            'hierarchical' => false,
            'labels' => array(
                'name' => 'Breakfast Menu Item tag',
                'singular_name' => 'Breakfast Menu Item tag',
            ),
            'show_ui' => true,
            'show_admin_column' => true,
            'query_var' => true,
            'rewrite' => array( 'slug' => 'post_tag' ),
    ));
}
add_action('init', 'cw_post_type_breakfast');
/* End Custom Post Breakfast menu item */

/* Create Custom Post Type: Brunch menu item */
function cw_post_type_brunch() {
 
    $supports = array(
        'title', // post title
        'editor', // post content
        'author', // post author
        'thumbnail', // featured images
        'excerpt', // post excerpt
        'custom-fields', // custom fields
        'comments', // post comments
        'revisions', // post revisions
        'post-formats', // post formats
        'taxonomies', // post formats
    );
    $labels = array(
        'name' => __('Brunch Menu Items', 'plural'),
        'singular_name' => __('Brunch Menu Item','singular'),
        'menu_name' => _x('Brunch Menu', 'admin menu'),
        'name_admin_bar' => _x('Brunch Menu Items', 'admin bar'),
        'add_new' => _x('Add New', 'add new'),
        'add_new_item' => __('Add New Brunch Menu Item'),
        'new_item' => __('New Brunch Menu Item'),
        'edit_item' => __('Edit Brunch Menu Item'),
        'view_item' => __('View Brunch Menu Items'),
        'all_items' => __('All Brunch Menu Items'),
        'search_items' => __('Search Brunch Menu Items'),
        'not_found' => __('No Brunch Menu Items found.'),
    );
    $args = array(
        'supports' => $supports,
        'labels' => $labels,
        'taxonomies' => array( 'specials','food_types','post_tag', 'category'),
        'public' => true,
        'query_var' => true,
        'menu_icon'   => 'dashicons-carrot',
        'menu_position' => '3',
        'rewrite' => array('slug' => 'brunch-menu'),
        'has_archive' => false,
        'hierarchical' => true,

        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => false,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
    );
    register_post_type('brunch menu item', $args);

    register_taxonomy( 'menu_tag', /* register custom taxonomy - tag*/ 'brunch menu item', array(
            'hierarchical' => false,
            'labels' => array(
                'name' => 'Brunch Menu Item tag',
                'singular_name' => 'Brunch Menu Item tag',
            ),
            'show_ui' => true,
            'show_admin_column' => true,
            'query_var' => true,
            'rewrite' => array( 'slug' => 'post_tag' ),
    ));
}
add_action('init', 'cw_post_type_brunch');
/* End Custom Post Brunch menu item */

/* Create Custom Post Type: Lunch menu item */
function cw_post_type_lunch() {
 
    $supports = array(
        'title', // post title
        'editor', // post content
        'author', // post author
        'thumbnail', // featured images
        'excerpt', // post excerpt
        'custom-fields', // custom fields
        'comments', // post comments
        'revisions', // post revisions
        'post-formats', // post formats
        'taxonomies', // post formats
    );
    $labels = array(
        'name' => __('Lunch Menu Items', 'plural'),
        'singular_name' => __('Lunch Menu Item','singular'),
        'menu_name' => _x('Lunch Menu', 'admin menu'),
        'name_admin_bar' => _x('Lunch Menu Items', 'admin bar'),
        'add_new' => _x('Add New', 'add new'),
        'add_new_item' => __('Add New Lunch Menu Item'),
        'new_item' => __('New Lunch Menu Item'),
        'edit_item' => __('Edit Lunch Menu Item'),
        'view_item' => __('View Lunch Menu Items'),
        'all_items' => __('All Lunch Menu Items'),
        'search_items' => __('Search Lunch Menu Items'),
        'not_found' => __('No Lunch Menu Items found.'),
    );
    $args = array(
        'supports' => $supports,
        'labels' => $labels,
        'taxonomies' => array( 'specials','food_types','post_tag', 'category'),
        'public' => true,
        'query_var' => true,
        'menu_icon'   => 'dashicons-carrot',
        'menu_position' => '3',
        'rewrite' => array('slug' => 'lunch-menu'),
        'has_archive' => false,
        'hierarchical' => true,

        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'menu_position'       => 5,
        'can_export'          => true,
        'has_archive'         => false,
        'exclude_from_search' => false,
        'publicly_queryable'  => true,
        'capability_type'     => 'page',
    );
    register_post_type('lunch menu item', $args);

    register_taxonomy( 'menu_tag', /* register custom taxonomy - tag*/ 'lunch menu item', array(
            'hierarchical' => false,
            'labels' => array(
                'name' => 'Lunch Menu Item tag',
                'singular_name' => 'Lunch Menu Item tag',
            ),
            'show_ui' => true,
            'show_admin_column' => true,
            'query_var' => true,
            'rewrite' => array( 'slug' => 'post_tag' ),
    ));
}
add_action('init', 'cw_post_type_lunch');
/* End Custom Post Lunch menu item */

/* Custom Post Type : Dinner menu item */ 
function cw_post_type_dinner() {
     
    $supports = array(
        'title', // post title
        'editor', // post content
        'author', // post author
        'thumbnail', // featured images
        'excerpt', // post excerpt
        'custom-fields', // custom fields
        'comments', // post comments
        'revisions', // post revisions
        'post-formats', // post formats
        'taxonomies',
    );
    $labels = array(
        'name' => __('Dinner Menu Items', 'plural'),
        'singular_name' => __('Dinner Menu Item','singular'),
        'menu_name' => _x('Dinner Menu', 'admin menu'),
        'name_admin_bar' => _x('Dinner Menu Items', 'admin bar'),
        'add_new' => _x('Add New', 'add new'),
        'add_new_item' => __('Add New Dinner Menu Item'),
        'new_item' => __('New Dinner Menu Item'),
        'edit_item' => __('Edit Dinner Menu Item'),
        'view_item' => __('View Dinner Menu Items'),
        'all_items' => __('All Dinner Menu Items'),
        'search_items' => __('Search Dinner Menu Items'),
        'not_found' => __('No Dinner Menu Items found.'),
    );
    $args = array(
        'supports' => $supports,
        'labels' => $labels,
        'taxonomies' => array( 'specials','category','food_types', 'post_tag','menu_sections'),
        'public' => true,
        'query_var' => true,
        'menu_position' => '4',
        'menu_icon'   => 'dashicons-carrot',
        'rewrite' => array('slug' => 'dinner-menu'),
        'has_archive' => false,
        'hierarchical' => true,
    );

    register_post_type('dinner menu item', $args);
}
add_action('init', 'cw_post_type_dinner');
/* End Custom Post Dinner menu item */

/* Custom Post Type : Beer menu item */ 
function cw_post_type_beer() {
 
    $supports = array(
        'title', // post title
        'editor', // post content
        'author', // post author
        'thumbnail', // featured images
        'excerpt', // post excerpt
        'custom-fields', // custom fields
        'comments', // post comments
        'revisions', // post revisions
        'post-formats', // post formats
        'taxonomies',
    );
    $labels = array(
        'name' => __('Beer Menu Items', 'plural'),
        'singular_name' => __('Beer Menu Item','singular'),
        'menu_name' => _x('Beer Menu', 'admin menu'),
        'name_admin_bar' => _x('Beer Menu Items', 'admin bar'),
        'add_new' => _x('Add New', 'add new'),
        'add_new_item' => __('Add New Beer Menu Item'),
        'new_item' => __('New Beer Menu Item'),
        'edit_item' => __('Edit Beer Menu Item'),
        'view_item' => __('View Beer Menu Items'),
        'all_items' => __('All Beer Menu Items'),
        'search_items' => __('Search Beer Menu Items'),
        'not_found' => __('No Beer Menu Items found.'),
    ); 
    $args = array(
        'supports' => $supports,
        'labels' => $labels,
        'taxonomies' => array( 'specials','category', 'post_tag'),
        'public' => true,
        'query_var' => true,
        'menu_position' => '5',
        'menu_icon'   => 'dashicons-carrot',
        'rewrite' => array('slug' => 'beer-menu'),
        'has_archive' => false,
        'hierarchical' => false,
    );

    register_post_type('beer menu item', $args);
    flush_rewrite_rules();
}
add_action('init', 'cw_post_type_beer');
/* End Custom Post Beer menu item */

//create custom taxonomies name it specials for your posts
//hook into the init action and call create_book_taxonomies when it fires
add_action( 'init', 'create_specials_hierarchical_taxonomy', 0 );
function create_specials_hierarchical_taxonomy() {
 
    // Add new taxonomy, make it hierarchical like categories
    //first do the translations part for GUI
    $labels = array(
        'name' => _x( 'Specials', 'taxonomy general name' ),
        'singular_name' => _x( 'Special', 'taxonomy singular name' ),
        'search_items' =>  __( 'Search Specials' ),
        'all_items' => __( 'All Specials' ),
        'parent_item' => __( 'Parent Special' ),
        'parent_item_colon' => __( 'Parent Special:' ),
        'edit_item' => __( 'Edit Special' ), 
        'update_item' => __( 'Update Special' ),
        'add_new_item' => __( 'Add New Special' ),
        'new_item_name' => __( 'New Special Name' ),
        'menu_name' => __( 'Specials' ),
    );    
     
    // Now register the taxonomy     
    register_taxonomy('specials', array('lunch menu item','dinner menu item'), array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'specials' ),
    ));
}
add_action( 'init', 'create_food_types_hierarchical_taxonomy', 0 );
function create_food_types_hierarchical_taxonomy() {

    $labels = array(
        'name' => _x( 'Food Types', 'taxonomy general name' ),
        'singular_name' => _x( 'Food Types', 'taxonomy singular name' ),
        'search_items' =>  __( 'Search Food Types' ),
        'all_items' => __( 'All Food Types' ),
        'parent_item' => __( 'Parent Food Types' ),
        'parent_item_colon' => __( 'Parent Food Types:' ),
        'edit_item' => __( 'Edit Food Types' ), 
        'update_item' => __( 'Update Food Types' ),
        'add_new_item' => __( 'Add New Food Type' ),
        'new_item_name' => __( 'New Food Type' ),
        'menu_name' => __( 'Food Types' ),
    );
    register_taxonomy( 'food_types', array('lunch menu item','dinner menu item'),
        array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'food-types' ),
    ));
}
add_action( 'init', 'create_menu_sections_hierarchical_taxonomy', 0 );
function create_menu_sections_hierarchical_taxonomy() {

    $labels = array(
        'name' => _x( 'Menu Sections', 'taxonomy general name' ),
        'singular_name' => _x( 'Menu Sections', 'taxonomy singular name' ),
        'search_items' =>  __( 'Search Menu Sections' ),
        'all_items' => __( 'All Menu Sections' ),
        'parent_item' => __( 'Parent Menu Sections' ),
        'parent_item_colon' => __( 'Parent Menu Sections:' ),
        'edit_item' => __( 'Edit Menu Sections' ), 
        'update_item' => __( 'Update Menu Sections' ),
        'add_new_item' => __( 'Add New Menu Section' ),
        'new_item_name' => __( 'New Menu Section' ),
        'menu_name' => __( 'Menu Sections' ),
    );
    register_taxonomy( 'menu_sections', array('lunch menu item','dinner menu item','breakfast menu item', 'brunch menu item'),
        array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array( 'slug' => 'menu-sections' ),
    ));
}
 