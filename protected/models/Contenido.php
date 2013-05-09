<?php

/**
 * This is the model class for table "condor.contenido".
 *
 * The followings are the available columns in table 'condor.contenido':
 * @property integer $id_contenido
 * @property string $nb_contenido
 * @property string $cont_contenido
 * @property integer $id_leccion
 */
class Contenido extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Contenido the static model class
	 */
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	/**
	 * @return string the associated database table name
	 */
	public function tableName()
	{
		return 'condor.contenido';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nb_contenido, cont_contenido, id_leccion', 'required'),
			array('id_leccion', 'numerical', 'integerOnly'=>true),
			array('nb_contenido', 'length', 'max'=>80),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_contenido, nb_contenido, cont_contenido, id_leccion', 'safe', 'on'=>'search'),
		);
	}

	/**
	 * @return array relational rules.
	 */
	public function relations()
	{
		// NOTE: you may need to adjust the relation name and the related
		// class name for the relations automatically generated below.
		return array(
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_contenido' => 'Id Contenido',
			'nb_contenido' => 'Nb Contenido',
			'cont_contenido' => 'Cont Contenido',
			'id_leccion' => 'Id Leccion',
		);
	}

	/**
	 * Retrieves a list of models based on the current search/filter conditions.
	 * @return CActiveDataProvider the data provider that can return the models based on the search/filter conditions.
	 */
	public function search()
	{
		// Warning: Please modify the following code to remove attributes that
		// should not be searched.

		$criteria=new CDbCriteria;

		$criteria->compare('id_contenido',$this->id_contenido);
		$criteria->compare('nb_contenido',$this->nb_contenido,true);
		$criteria->compare('cont_contenido',$this->cont_contenido,true);
		$criteria->compare('id_leccion',$this->id_leccion);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}