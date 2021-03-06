<?php echo $header; ?>
<?php if ($categories) { ?>
<div class="container visible-xs">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_blog_category ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex2-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex2-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach ($category['children'] as $children) { ?>
              <ul class="list-unstyled">
                <li><a href="<?php echo $children['href']; ?>"><?php echo $children['name']; ?></a></li>
              </ul>
              <?php } ?>
            </div>
          </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?>

      <?php if ($blogs) { ?>
      
        <?php foreach($blogs as $blog) { ?>
        
          
          <?php if($cms_blog_category_page_show_image) { ?>
            <?php if ($blog['thumb']) { ?>
            <div><img src="<?php echo $blog['thumb']; ?>" alt="<?php echo $blog['title']; ?>" title="<?php echo $blog['title']; ?>" class="img-thumbnail" /></div>
            <?php } ?>
          <?php } ?>
         
          
          <?php if($cms_blog_category_page_show_title) { ?>
          <h4><a href="<?php echo $blog['link'];?>" title="<?php echo $blog['title'];?>"><?php echo $blog['title']; ?></a></h4>
          <?php } ?>
          
          <div>
		
		  	<?php if( $cms_blog_category_page_show_author ) { ?>
			<span><i class="fa fa-pencil"></i> <b><?php echo $text_written_by; ?></b> <?php echo $blog['author']; ?></span> 
			<?php } ?>
			
			<?php if( $cms_blog_category_page_show_created_date ) { ?>
			<span><i class="fa fa-calendar"></i> <b><?php echo $text_created_date; ?></b> <?php echo $blog['created']; ?></span> 
			<?php } ?>
			
			
			<?php if( $cms_blog_category_page_show_hits ) { ?>
			<span><i class="fa fa-insert-template"></i> <b><?php echo $text_hits; ?></b> <?php echo $blog['hits']; ?> </span>
			<?php } ?>		
			

			
			<?php if( $cms_blog_category_page_show_comment_counter ) { ?>
			<span><i class="fa fa-comment"></i> <b><?php echo $text_comment_count; ?></b> <?php echo $blog['comment_count']; ?> </span>
			<?php } ?>	
			
		
		  </div>
          
          <?php if($cms_blog_category_page_show_brief) { ?>
            <?php if ($blog['brief']) { ?>
            <div><?php echo $blog['brief']; ?></div>
            <?php } ?>
          <?php } ?>
          
          
        
        <hr>
        <?php } ?>
         
         <div class="row">
            <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
            <div class="col-sm-6 text-right"><?php echo $results; ?></div>
         </div>
      
      <?php } else { ?>
      <p><?php echo $text_empty; ?></p>
      <div class="buttons">
        <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
      </div>
      <?php } ?>
      
      <?php echo $content_bottom; ?></div>
    </div>
</div>
<?php echo $footer; ?>
