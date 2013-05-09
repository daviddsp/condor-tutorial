<?php
$this->breadcrumbs=array(
	'Contenidos',
);
/*
$this->menu=array(
	array('label'=>'Create Contenido','url'=>array('create')),
	array('label'=>'Manage Contenido','url'=>array('admin')),
);*/
?>

<h1>Contenidos</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
