<div class="view">

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_contenido')); ?>:</b>
	<?php echo CHtml::link(CHtml::encode($data->id_contenido),array('view','id'=>$data->id_contenido)); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('nb_contenido')); ?>:</b>
	<?php echo CHtml::encode($data->nb_contenido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('cont_contenido')); ?>:</b>
	<?php echo CHtml::encode($data->cont_contenido); ?>
	<br />

	<b><?php echo CHtml::encode($data->getAttributeLabel('id_leccion')); ?>:</b>
	<?php echo CHtml::encode($data->id_leccion); ?>
	<br />


</div>