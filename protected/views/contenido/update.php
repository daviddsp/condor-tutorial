<?php
$this->breadcrumbs=array(
	'Contenidos'=>array('index'),
	$model->id_contenido=>array('view','id'=>$model->id_contenido),
	'Update',
);

$this->menu=array(
	array('label'=>'List Contenido','url'=>array('index')),
	array('label'=>'Create Contenido','url'=>array('create')),
	array('label'=>'View Contenido','url'=>array('view','id'=>$model->id_contenido)),
	array('label'=>'Manage Contenido','url'=>array('admin')),
);
?>

<h1>Update Contenido <?php echo $model->id_contenido; ?></h1>

<?php echo $this->renderPartial('_form',array('model'=>$model)); ?>