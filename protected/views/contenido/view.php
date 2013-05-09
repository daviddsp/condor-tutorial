<?php
$this->breadcrumbs=array(
	'Contenidos'=>array('index'),
	$model->id_contenido,
);

$this->menu=array(
	array('label'=>'List Contenido','url'=>array('index')),
	array('label'=>'Create Contenido','url'=>array('create')),
	array('label'=>'Update Contenido','url'=>array('update','id'=>$model->id_contenido)),
	array('label'=>'Delete Contenido','url'=>'#','linkOptions'=>array('submit'=>array('delete','id'=>$model->id_contenido),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage Contenido','url'=>array('admin')),
);
?>

<h1>View Contenido #<?php echo $model->id_contenido; ?></h1>

<?php $this->widget('bootstrap.widgets.TbDetailView',array(
	'data'=>$model,
	'attributes'=>array(
		'id_contenido',
		'nb_contenido',
		'cont_contenido',
		'id_leccion',
	),
)); ?>
