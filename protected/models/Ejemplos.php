<?php

/**
 * This is the model class for table "ejemplos".
 *
 * The followings are the available columns in table 'ejemplos':
 * @property integer $id_ejemplos
 * @property string $nb_ejemplos
 * @property string $cont_ejercicios
 * @property integer $id_contenidos
 *
 * The followings are the available model relations:
 * @property Contenidos $idContenidos
 */
class Ejemplos extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Ejemplos the static model class
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
		return 'ejemplos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('nb_ejemplos, cont_ejercicios, id_contenidos', 'required'),
			array('id_contenidos', 'numerical', 'integerOnly'=>true),
			array('nb_ejemplos', 'length', 'max'=>100),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_ejemplos, nb_ejemplos, cont_ejercicios, id_contenidos', 'safe', 'on'=>'search'),
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
			'idContenidos' => array(self::BELONGS_TO, 'Contenidos', 'id_contenidos'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_ejemplos' => 'Id Ejemplos',
			'nb_ejemplos' => 'Nb Ejemplos',
			'cont_ejercicios' => 'Cont Ejercicios',
			'id_contenidos' => 'Id Contenidos',
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

		$criteria->compare('id_ejemplos',$this->id_ejemplos);
		$criteria->compare('nb_ejemplos',$this->nb_ejemplos,true);
		$criteria->compare('cont_ejercicios',$this->cont_ejercicios,true);
		$criteria->compare('id_contenidos',$this->id_contenidos);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}