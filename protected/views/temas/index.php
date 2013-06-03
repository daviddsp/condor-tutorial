<?php
$this->breadcrumbs=array(
	'Temas',
);


$this->widget('bootstrap.widgets.TbTabs', array(
'type'=>'tabs', // 'tabs' or 'pills'
'tabs'=>array(
array('label'=>'Crear Temas','url'=>array('create')),
	array('label'=>'Gestión de Temas','url'=>array('admin')),
	array('label'=>'Lista de Lecciones','url'=>array('Lecciones/index')),
),
));
/*
$this->menu=array(
	array('label'=>'Create Temas','url'=>array('create')),
	array('label'=>'Manage Temas','url'=>array('admin')),
	array('label'=>'Lista de Lecciones','url'=>array('Lecciones/index')),
);*/
?>

<h1>Temas</h1>

<?php $this->widget('bootstrap.widgets.TbListView',array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
