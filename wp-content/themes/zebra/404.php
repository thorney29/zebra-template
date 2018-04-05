<?php
/**
 * The page template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * e.g., it puts together the home page when no home.php file exists.
 *
 * Learn more: {@link https://codex.wordpress.org/Template_Hierarchy}
 *
 * @package WordPress
 * @subpackage Zebra
 * @since Zebra 1.0
 */

get_header(); ?>
 
 
 
<div id="primary" class="content-area">
        <main id="main" class="col-sm-12" role="main">
			<section class="error-404 not-found">
				 
				 
				<header class="page-header">
				 
				 
				<h1 class="page-title"><?php _e( 'Oops! That page can&rsquo;t be found.', 'twentyfifteen' ); ?></h1>
				 
				 
				                </header>
				 
				 
				<!-- .page-header -->
				 
				 
				 
				<div class="page-content">
				 
				 
				<?php _e( 'It looks like nothing was found at this location. Maybe try a search?', 'twentyfifteen' ); ?>
				 
				 
                <?php get_search_form(); ?>
                </div>
 
 
<!-- .page-content -->
            </section>
 
 
<!-- .error-404 -->
 
        </main><!-- .site-main -->
    </div>
 
 
<!-- .content-area -->
 
<?php get_footer(); ?>
