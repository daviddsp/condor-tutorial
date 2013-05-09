<?php
$this->breadcrumbs=array(
	'Temas',
);

$this->widget('bootstrap.widgets.TbTabs', array(
'type'=>'pills',
'tabs'=>array(
	array('label'=>'Crear Temas','url'=>array('create')),
	array('label'=>'Gestión de Temas','url'=>array('admin')),
),
));

/*
$this->menu=array(
	array('label'=>'Create Temas','url'=>array('create')),
	array('label'=>'Manage Temas','url'=>array('admin')),
);*/
?>

<h1>Temases</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
