<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_contenidos')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_contenidos),array('view','id'=>$data->id_contenidos)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_lecciones')); ?>:</b>
	<?php echo CHtml::encode($data->id_lecciones); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('descrip_contenidos')); ?>:</b>
	<?php echo CHtml::encode($data->descrip_contenidos); ?>
	<br />


</div>