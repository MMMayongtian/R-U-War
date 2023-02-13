<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2016-04-02 10:30
 */

namespace common\models;

use Yii;
use Exception;
use common\helpers\Util;
use yii\behaviors\TimestampBehavior;
use yii\web\UploadedFile;

/**
 * Team model
 *
 * @property integer $id
 * @property string $membername
 * @property string $gitname
 * @property string $occupation
 * @property string $description
 * @property string $email
 * @property string $avatar
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property string $password write-only password
 */
class Team extends \yii\db\ActiveRecord 
{

    const STATUS_DELETED = 0;
    
    const STATUS_ACTIVE = 10;

    public function behaviors()
    {
        return [
            TimestampBehavior::className()
        ];
    }

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%team}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['membername','gitname','occupation', 'description'], 'string'],
            [['avatar'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg, jpeg, gif, webp'],
            [['membername', 'email'], 'unique'],
            ['email', 'email'],
            [['status'], 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED]],
            [['membername','gitname','occupation', 'email'], 'required', 'on' => ['create']],
            [['membername', 'gitname','occupation','description','email'], 'required', 'on' => ['update']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'membername' => Yii::t('app', 'Membername'),
            'gitname' => Yii::t('app','Gitname'),
            'occupation' => Yii::t('app', 'Occupation'),
            'description' => Yii::t('app', 'Description'),
            'email' => Yii::t('app', 'Email'),
            'avatar' => Yii::t('app', 'Avatar'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    public function beforeValidate()
    {
        if($this->avatar !== "0") {//为0表示需要删除图片，Util::handleModelSingleFileUpload()会有判断删除图片
            $this->avatar = UploadedFile::getInstance($this, "avatar");
        }
        return parent::beforeValidate();
    }

    /**
     * @inheritdoc
     */
    public function beforeSave($insert)
    {
        Util::handleModelSingleFileUpload($this, 'avatar', $insert, '@frontend/web/uploads/avatar/');
        return parent::beforeSave($insert);
    }

    /**
     * @inheritdoc
     */
    public function beforeDelete()
    {
        if( empty($this->avatar) ) return true;
        try {
            Util::deleteThumbnails(Yii::getAlias('@frontend/web') . $this->avatar, [], true);
        }catch (Exception $exception){
            $this->addError("avatar", $exception->getMessage());
            return false;
        }
        return true;
    }

    public static function getStatuses()
    {
        return [
            self::STATUS_ACTIVE => Yii::t('app', 'Normal'),
            self::STATUS_DELETED => Yii::t('app', 'Disabled'),
        ];
    }

    /**
     * Finds user by username
     *
     * @param string $username
     * @return static|null
     */
    public static function findByTeamname($membername)
    {
        return static::findOne(['membername' => $membername, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * Returns an ID that can uniquely identify a user identity.
     * @return string|int an ID that uniquely identifies a user identity.
     */
    public function getId()
    {
        return $this->id;
    }


}