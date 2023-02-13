<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2018-02-24 13:38
 */

use common\models\Team;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Team */
?>
<?= DetailView::widget([
    'model' => $model,
    'attributes' => [
        'id',
        'membername',
        'gitname',
        'occupation',
        'email',
        [
            'attribute' => 'avatar',
            'format' => 'raw',
            'value' => function($model){
                if( empty( $model->avatar ) ) return '-';
                return "<img style='max-width:100px;max-height:100px' src='" . $model->avatar . "'>";
            }
        ],
        [
            'attribute' => 'status',
            'value' => function ($model) {
                if($model->status == Team::STATUS_ACTIVE){
                    return Yii::t('app', 'Normal');
                }else if( $model->status == Team::STATUS_DELETED ) {
                    return Yii::t('app', 'Disabled');
                }
            }
        ],
        'created_at:datetime',
        'updated_at:datetime',
    ],
]) ?>