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
use yii\base\NotSupportedException;
use yii\behaviors\TimestampBehavior;
use yii\web\IdentityInterface;
use yii\web\UploadedFile;

/**
 * User model
 *
 * @property integer $id
 * @property string $username
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $email
 * @property string $auth_key
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

    //public $password;

    //public $repassword;

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
            [['membername', 'description'], 'string'],
            [['avatar'], 'file', 'skipOnEmpty' => true, 'extensions' => 'png, jpg, jpeg, gif, webp'],
            [['membername', 'email'], 'unique'],
            ['email', 'email'],
            [['status'], 'in', 'range' => [self::STATUS_ACTIVE, self::STATUS_DELETED]],
            [['membername', 'email'], 'required', 'on' => ['create']],
            [['membername', 'email'], 'required', 'on' => ['update']],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'membername' => Yii::t('app', 'Membername'),
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
        if($this->avatar !== "0") {//???0???????????????????????????Util::handleModelSingleFileUpload()????????????????????????
            $this->avatar = UploadedFile::getInstance($this, "avatar");
        }
        return parent::beforeValidate();
    }

    /**
     * @inheritdoc
     */
    public function beforeSave($insert)
    {
        // if (!$insert) {
        //     if( !empty($this->password) && empty($this->repassword) ){
        //         $this->addError("repassword", Yii::t('yii', '{attribute} must be equal to "{compareValueOrAttribute}".', [
        //             'attribute' => yii::t('app', 'Repeat Password'),
        //             'compareValueOrAttribute' => yii::t('app', 'Password')
        //             ])
        //         );
        //         return false;
        //     }
        //     $this->setPassword( $this->password );
        // }
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
     * @inheritdoc
     */
    // public static function findIdentity($id)
    // {
    //     return static::findOne(['id' => $id, 'status' => self::STATUS_ACTIVE]);
    // }

    /**
     * @inheritdoc
     */
    // public static function findIdentityByAccessToken($token, $type = null)
    // {
    //     throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
    // }

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
     * Finds user by password reset token
     *
     * @param string $token password reset token
     * @return static|null
     */
    // public static function findByPasswordResetToken($token)
    // {
    //     if (! static::isPasswordResetTokenValid($token)) {
    //         return null;
    //     }

    //     return static::findOne([
    //         'password_reset_token' => $token,
    //         'status' => self::STATUS_ACTIVE,
    //     ]);
    // }

    /**
     * Finds out if password reset token is valid
     *
     * @param string $token password reset token
     * @return boolean
     */
    // public static function isPasswordResetTokenValid($token)
    // {
    //     if (empty($token)) {
    //         return false;
    //     }

    //     $timestamp = (int)substr($token, strrpos($token, '_') + 1);
    //     $expire = Yii::$app->params['user.passwordResetTokenExpire'];
    //     return $timestamp + $expire >= time();
    // }

    /**
     * Returns an ID that can uniquely identify a user identity.
     * @return string|int an ID that uniquely identifies a user identity.
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Returns a key that can be used to check the validity of a given identity ID.
     *
     * The key should be unique for each individual user, and should be persistent
     * so that it can be used to check the validity of the user identity.
     *
     * The space of such keys should be big enough to defeat potential identity attacks.
     *
     * This is required if [[User::enableAutoLogin]] is enabled. The returned key will be stored on the
     * client side as a cookie and will be used to authenticate user even if PHP session has been expired.
     *
     * Make sure to invalidate earlier issued authKeys when you implement force user logout, password change and
     * other scenarios, that require forceful access revocation for old sessions.
     *
     * @return string a key that is used to check the validity of a given identity ID.
     * @see validateAuthKey()
     */
    // public function getAuthKey()
    // {
    //     return $this->auth_key;
    // }

    /**
     * Validates the given auth key.
     *
     * This is required if [[User::enableAutoLogin]] is enabled.
     * @param string $authKey the given auth key
     * @return bool whether the given auth key is valid.
     * @see getAuthKey()
     */
    // public function validateAuthKey($authKey)
    // {
    //     return $this->getAuthKey() === $authKey;
    // }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return boolean if password provided is valid for current user
     */
    // public function validatePassword($password)
    // {
    //     return Yii::$app->security->validatePassword($password, $this->password_hash);
    // }

    /**
     * Generates password hash from password and sets it to the model
     *
     * @param string $password
     * @throws \yii\base\Exception
     */
    // public function setPassword($password)
    // {
    //     $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    // }

    /**
     * Generates "remember me" authentication key
     */
    // public function generateAuthKey()
    // {
    //     $this->auth_key = Yii::$app->security->generateRandomString();
    // }

    /**
     * Generates new password reset token
     */
    // public function generatePasswordResetToken()
    // {
    //     $this->password_reset_token = Yii::$app->security->generateRandomString() . '_' . time();
    // }

    /**
     * Removes password reset token
     */
    // public function removePasswordResetToken()
    // {
    //     $this->password_reset_token = null;
    // }

}