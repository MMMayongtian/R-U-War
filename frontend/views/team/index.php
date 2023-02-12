<?php

use frontend\widgets\TeamListView;

/* @var $this yii\web\View */
/* @var $searchModel frontend\models\TeamSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Teams';
$this->params['breadcrumbs'][] = yii::t('app', 'Team');
?>

<div>
                <?= TeamListView::widget([
                    'dataProvider' => $dataProvider,
                ]) ?>
</div>
