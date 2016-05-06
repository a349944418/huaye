<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/default/stylesheet/stylesheet.css" rel="stylesheet">
<link href="catalog/view/javascript/bootstrap-submenu.min.css" rel="stylesheet">
<script src="catalog/view/javascript/bootstrap-submenu.min.js" type="text/javascript"></script>
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>
</head>
<body class="<?php echo $class; ?>">
<header >
  <div class="container">
    <div class="row">
      <div class="col-sm-4">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" style="max-height:100px;" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-sm-offset-3 col-sm-5"><?php echo $search; ?>
      </div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav class="navbar navbar-default">
  <div class="navbar-header">
    <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
      <span class="icon-bar"></span>
    </button>

    <a class="navbar-brand">Project Name</a>
  </div>

  <div class="collapse navbar-collapse">
    <ul class="nav navbar-nav">
      <li class="dropdown">
        <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">
          Dropdown<span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
  <li class="dropdown-submenu">
  <a tabindex="0">Action</a>

  <ul class="dropdown-menu">
    <li><a tabindex="0">Sub action</a></li>
    <li class="dropdown-submenu">
      <a tabindex="0">Another sub action</a>

      <ul class="dropdown-menu">
        <li><a tabindex="0">Sub action</a></li>
        <li><a tabindex="0">Another sub action</a></li>
        <li><a tabindex="0">Something else here</a></li>
      </ul>
    </li>
    <li><a tabindex="0">Something else here</a></li>
    <li class="disabled"><a tabindex="-1">Disabled action</a></li>
    <li class="dropdown-submenu">
      <a tabindex="0">Another action</a>

      <ul class="dropdown-menu">
        <li><a tabindex="0">Sub action</a></li>
        <li><a tabindex="0">Another sub action</a></li>
        <li><a tabindex="0">Something else here</a></li>
      </ul>
    </li>
  </ul>
</li>
<li class="dropdown-header">Dropdown header</li>
<li class="dropdown-submenu">
  <a tabindex="0">Another action</a>

  <ul class="dropdown-menu">
    <li><a tabindex="0">Sub action</a></li>
    <li><a tabindex="0">Another sub action</a></li>
    <li><a tabindex="0">Something else here</a></li>
  </ul>
</li>
<li><a tabindex="0">Something else here</a></li>
<li class="divider"></li>
<li><a tabindex="0">Separated link</a></li>
</ul>
      </li>
      <li class="dropdown">
        <a tabindex="0" data-toggle="dropdown" data-submenu="" aria-expanded="false">
          Dropdown 2<span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
  <li class="dropdown-submenu">
  <a tabindex="0">Action</a>

  <ul class="dropdown-menu">
    <li><a tabindex="0">Sub action</a></li>
    <li class="dropdown-submenu">
      <a tabindex="0">Another sub action</a>

      <ul class="dropdown-menu">
        <li><a tabindex="0">Sub action</a></li>
        <li><a tabindex="0">Another sub action</a></li>
        <li><a tabindex="0">Something else here</a></li>
      </ul>
    </li>
    <li><a tabindex="0">Something else here</a></li>
    <li class="disabled"><a tabindex="-1">Disabled action</a></li>
    <li class="dropdown-submenu">
      <a tabindex="0">Another action</a>

      <ul class="dropdown-menu">
        <li><a tabindex="0">Sub action</a></li>
        <li><a tabindex="0">Another sub action</a></li>
        <li><a tabindex="0">Something else here</a></li>
      </ul>
    </li>
  </ul>
</li>
<li class="dropdown-header">Dropdown header</li>
<li class="dropdown-submenu">
  <a tabindex="0">Another action</a>

  <ul class="dropdown-menu">
    <li><a tabindex="0">Sub action</a></li>
    <li><a tabindex="0">Another sub action</a></li>
    <li><a tabindex="0">Something else here</a></li>
  </ul>
</li>
<li><a tabindex="0">Something else here</a></li>
<li class="divider"></li>
<li><a tabindex="0">Separated link</a></li>
</ul>
      </li>
    </ul>

    <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
        <a tabindex="0" data-toggle="dropdown" data-submenu="">
          Dropdown 3<span class="caret"></span>
        </a>

        <ul class="dropdown-menu">
  <li class="dropdown-submenu">
  <a tabindex="0">Action</a>

  <ul class="dropdown-menu">
    <li><a tabindex="0">Sub action</a></li>
    <li class="dropdown-submenu">
      <a tabindex="0">Another sub action</a>

      <ul class="dropdown-menu">
        <li><a tabindex="0">Sub action</a></li>
        <li><a tabindex="0">Another sub action</a></li>
        <li><a tabindex="0">Something else here</a></li>
      </ul>
    </li>
    <li><a tabindex="0">Something else here</a></li>
    <li class="disabled"><a tabindex="-1">Disabled action</a></li>
    <li class="dropdown-submenu">
      <a tabindex="0">Another action</a>

      <ul class="dropdown-menu">
        <li><a tabindex="0">Sub action</a></li>
        <li><a tabindex="0">Another sub action</a></li>
        <li><a tabindex="0">Something else here</a></li>
      </ul>
    </li>
  </ul>
</li>
<li class="dropdown-header">Dropdown header</li>
<li class="dropdown-submenu">
  <a tabindex="0">Another action</a>

  <ul class="dropdown-menu">
    <li><a tabindex="0">Sub action</a></li>
    <li><a tabindex="0">Another sub action</a></li>
    <li><a tabindex="0">Something else here</a></li>
  </ul>
</li>
<li><a tabindex="0">Something else here</a></li>
<li class="divider"></li>
<li><a tabindex="0">Separated link</a></li>
</ul>
      </li>
    </ul>
  </div>
</nav>
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
        <?php foreach ($categories as $category) { ?>
          <?php if ($category['children']) { ?>
            <li class="dropdown">
              <a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown">
                <?php echo $category['name']; ?><span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <?php foreach ($category['children'] as $child) { ?>
                  <?php if ($child['children']) { ?>
                    <li class="dropdown-submenu">
                      <a href="<?php echo $child['href']; ?>" tabindex="0" >
                        <?php echo $child['name']; ?>
                      </a>
                      <ul class="dropdown-menu">
                        <?php foreach ($child['children'] as $c) { ?>
                          <li><a href="<?php echo $c['href']; ?>"><?php echo $c['name']; ?></a></li>
                        <?php } ?>
                      </ul>
                  <?php } else { ?>
                    <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                  <?php } ?>                 
                <?php } ?>
              </ul>
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
