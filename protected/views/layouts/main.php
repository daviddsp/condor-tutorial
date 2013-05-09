<?php /* @var $this Controller */ ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>	
	<link rel="shortcut icon" href="<?php echo Yii::app()->request->baseUrl; ?>/images/condor-logo.png" type="image/x-icon" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="language" content="en" />

	<!-- blueprint CSS framework -->
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/screen.css" media="screen, projection" />
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/print.css" media="print" />
	<!--[if lt IE 8]>
	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/ie.css" media="screen, projection" />
	<![endif]-->

	<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->request->baseUrl; ?>/css/main.css" />


	<title><?php echo CHtml::encode($this->pageTitle); ?></title>
</head>

<body>

<div class="container" id="page">

	<div id="header">
	
	<nav id="menu">
<?php
/*se crea la variable $admin paraque los usuarios con el perfil de administradores puedan tener prioridades que otros usuarios no tendran*/ 
$admin = (isset(Yii::app()->user->perfil) and Yii::app()->user->perfil == 'admin') ? true : false ;
$this->widget('bootstrap.widgets.TbNavbar', array(
				'type'=>'inverse', // null or 'inverse'
				'brand'=>'Cóndor',
				'fixed' => 'top',
				'brandUrl'=>array('/site/index'),
				'collapse'=>true, // requires bootstrap-responsive.css
				'items'=>array(
				array(
					'class'=>'bootstrap.widgets.TbMenu',
					'items'=>array(
						array('label'=>'Inicio', 'url'=>array('/site/index')),
						/*en esta linea es donde limitamos a que los usuarios vean los modulos que querramos*/
						array('label'=>'G.Contenido', 'url'=>array('/Temas/index'), 'visible' => $admin),
						array('label'=>'Temas', 'url'=>array('/Temas_g/index')),
						//array('label'=>'Usuario', 'url'=>array('/usuario/admin')),
						array('label'=>'Usuarios', 'url'=>array('/usuario/admin'), 'visible' => $admin),
						array('label'=>'¿Quienes Somos?', 'url'=>array('/site/page', 'view'=>'about'),),
						array('label'=>'Contactanos', 'url'=>array('/site/contact')),
						
			),
		),
		'<form class="navbar-search pull-left" action=""><input type="text" class="search-query span2" placeholder="Search"></form>',
		array(
			'class'=>'bootstrap.widgets.TbMenu',
			'htmlOptions'=>array('class'=>'pull-right'),
			'items'=>array(
			array('label'=>'¡Resgistrate!', 'url'=>array('/usuario/create')), 
			array('label'=>'Login', 'url'=>array('/site/login'), 'visible'=>Yii::app()->user->isGuest),
			array('label'=>'Logout ('.Yii::app()->user->name.')', 'url'=>array('/site/logout'), 'visible'=>!Yii::app()->user->isGuest),
				
			),
		),
	),
));?>
	</nav><!-- mainmenu -->
		<div id="logo"><?php echo CHtml::encode(Yii::app()->name); ?></div>
	</div><!-- header -->

	<?php if(isset($this->breadcrumbs)):?>
		<?php $this->widget('zii.widgets.CBreadcrumbs', array(
			'links'=>$this->breadcrumbs,
		)); ?><!-- breadcrumbs -->
	<?php endif?>

	<div style="text-align: right;">
<?php if(!Yii::app()->user->isGuest and isset(Yii::app()->user->last_login)){
echo "Último Acceso: ".Yii::app()->dateFormatter->format("d-M-y H:M a", Yii::app()->user->last_login);} ?>
</div>

	<?php echo $content; ?>

	<div class="clear"></div>

	<footer>
		<img style="border:10px;width:38px;height:34px"
            src="./images/cuc-logo.png"
            alt="¡CUC Logo!" />
		Colegio Universitario de Caracas - PNFI. <?php echo date('Y'); ?>.<br/>
		Coordinación de Desarrollo Tecnológico.<br/>
		Este sitio web está liberado bajo una licencia <a href="http://creativecommons.org/licenses/by/3.0/"target="_blank">Creative Commons Attribution 3.0 License</a>.<br/>
		<?php echo Yii::app()->params['adminEmail']?>
		
			<article class="herramientas">
			
        	<img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Logo.png"
            alt="¡HTML5!" />

            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Styling.png"
            alt="¡HTML5 CSS3!" />
            
            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Multimedia.png"
            alt="¡HTML5 Multimedia!" />
            
            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-3D-Effects.png"
            alt="¡HTML5 Multimedia!" />            
            
            
            <img style="border:0;width:58px;height:31px"
            src="./images/HTML5-Semantics.png"
            alt="¡HTML5 Semantica!" />
            
			</article>
		
	</footer><!-- footer -->
	<article class="redes-sociales">
			<!--  <h4 align="right">Encuentranos por las Redes Sociales!!.</h4>-->
			<aside>
				<a>
				<!--<img style="border:1;width:58px;height:58px" align="right"
            			src="./images/facebook.png"
            			alt="¡HTML5 Semantica!" />-->
            
            			<a href="https://twitter.com/ProyectoCondor"><img style="border:1;" align="right"
            			src="./images/twitter.png"
            			alt="¡Twitter!" />
            		
            			<img style="border:1;" align="right"
            			src="./images/google-White.png"
            			alt="¡Google plus!" />
			</aside>	
				<div class="btn-toolbar">

	</article>

</div><!-- page -->

</body>
</html>
