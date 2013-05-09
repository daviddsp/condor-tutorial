<?php

/**
 * This is the model class for table "contenidos".
 *
 * The followings are the available columns in table 'contenidos':
 * @property integer $id_contenidos
 * @property integer $id_lecciones
 * @property string $descrip_contenidos
 *
 * The followings are the available model relations:
 * @property Paginas[] $paginases
 * @property Ejercicios[] $ejercicioses
 * @property Ejemplos[] $ejemploses
 * @property Multimedia[] $multimedias
 * @property Lecciones $idLecciones
 * @property Fuentes[] $fuentes
 */
class Contenidos extends CActiveRecord
{
	/**
	 * Returns the static model of the specified AR class.
	 * @param string $className active record class name.
	 * @return Contenidos the static model class
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
		return 'contenidos';
	}

	/**
	 * @return array validation rules for model attributes.
	 */
	public function rules()
	{
		// NOTE: you should only define rules for those attributes that
		// will receive user inputs.
		return array(
			array('id_lecciones, descrip_contenidos', 'required'),
			array('id_lecciones', 'numerical', 'integerOnly'=>true),
			// The following rule is used by search().
			// Please remove those attributes that should not be searched.
			array('id_contenidos, id_lecciones, descrip_contenidos', 'safe', 'on'=>'search'),
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
			'paginases' => array(self::HAS_MANY, 'Paginas', 'id_contenidos'),
			'ejercicioses' => array(self::HAS_MANY, 'Ejercicios', 'id_contenidos'),
			'ejemploses' => array(self::HAS_MANY, 'Ejemplos', 'id_contenidos'),
			'multimedias' => array(self::HAS_MANY, 'Multimedia', 'id_contenidos'),
			'idLecciones' => array(self::BELONGS_TO, 'Lecciones', 'id_lecciones'),
			'fuentes' => array(self::HAS_MANY, 'Fuentes', 'id_contenidos'),
		);
	}

	/**
	 * @return array customized attribute labels (name=>label)
	 */
	public function attributeLabels()
	{
		return array(
			'id_contenidos' => 'Id Contenidos',
			'id_lecciones' => 'Id Lecciones',
			'descrip_contenidos' => 'Descrip Contenidos',
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

		$criteria->compare('id_contenidos',$this->id_contenidos);
		$criteria->compare('id_lecciones',$this->id_lecciones);
		$criteria->compare('descrip_contenidos',$this->descrip_contenidos,true);

		return new CActiveDataProvider($this, array(
			'criteria'=>$criteria,
		));
	}
}