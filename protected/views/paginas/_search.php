<?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
	'action'=>Yii::app()->createUrl($this->route),
	'method'=>'get',
)); ?>

	<?php echo $form->textFieldRow($model,'id_paginaas',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_usuario',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_temas',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_lecciones',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_multimedia',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_contenidos',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_usuarios_lecciones',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_ejemplos',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_ejercicios',array('class'=>'span5')); ?>

	<?php echo $form->textFieldRow($model,'id_fuente_referencias',array('class'=>'span5')); ?>

	<div class="form-actions">
		<?php $this->widget('bootstrap.widgets.TbButton', array(
			'buttonType' => 'submit',
			'type'=>'primary',
			'label'=>'Search',
		)); ?>
	</div>

<?php $this->endWidget(); ?>
