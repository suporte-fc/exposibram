<?php get_header(); ?>

<div id="content" class="row">

	<div id="main" class="<?php simple_boostrap_main_classes(); ?>" role="main">
		
		<div class="block block-title">
			<h1 class="archive_title">
				<?php echo get_the_archive_title() ?>
			</h1>
		</div>

		<?php if (have_posts()) : ?>

		<?php while (have_posts()) : the_post(); ?>
		
			<div class="row umanoticia">
				<div class="col-md-3 col-sm-4">
					<a href="<?php the_permalink(); ?>"><?php
					echo get_the_post_thumbnail( null, 'thumbnail' );
					?></a>
				</div>
				<div class="col-md-9 col-sm-8">
					<h2><a href="<?php the_permalink(); ?>"><?php
					the_title();
					?></a></h2>
					<a href="<?php the_permalink(); ?>">Leia mais</a>
				</div>
			</div>
		
		<?php endwhile; ?>	
		
		<?php simple_boostrap_page_navi(); ?>	
		
		<?php else : ?>
		
		<article id="post-not-found" class="block">
		    <p><?php _e("No items found.", "simple-bootstrap"); ?></p>
		</article>
		
		<?php endif; ?>

	</div>

	<?php get_sidebar("left"); ?>
	<?php get_sidebar("right"); ?>

</div>

<?php get_footer(); ?>