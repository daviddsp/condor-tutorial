<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_temas')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_temas),array('view','id'=>$data->id_temas)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nb_temas')); ?>:</b>
	<?php echo CHtml::encode($data->nb_temas); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descrip_temas')); ?>:</b>
	<?php echo CHtml::encode($data->descrip_temas); ?>
	<br />
<?php 
$this->widget('bootstrap.widgets.TbButtonGroup', array(
'buttons'=>array(
array('label'=>'Ver lista de lecciones', 'url'=>array('view','id'=>$data->id_temas)),
/*array('label'=>'2', 'url'=>'#'),
array('label'=>'3', 'url'=>'#'),
array('label'=>'4', 'url'=>'#'),
*/),
));

?>
</div>
