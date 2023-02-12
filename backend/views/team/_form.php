<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2016-03-25 11:15
 */

/**
 * @var $this yii\web\View
 * @var $model common\models\User
 */
use backend\widgets\ActiveForm;
use common\models\Team;

$this->title = 'Team';
?>
<div class="col-sm-12">
    <div class="ibox">
        <?= $this->render('/widgets/_ibox-title') ?>
        <div class="ibox-content">

            <?php $form = ActiveForm::begin([
                'options' => [
                    'enctype' => 'multipart/form-data',
                    'class' => 'form-horizontal'
                ]
            ]); ?>
            <?php
            $temp = ['maxlength' => 64];
            if (Yii::$app->controller->action->id == 'update') {
                $temp['disabled'] = 'disabled';
            }
            ?>
            <?= $form->field($model, 'membername')->textInput($temp) ?>
            <div class="hr-line-dashed"></div>
            <?= $form->field($model, 'avatar')->imgInput() ?>
            <div class="hr-line-dashed"></div>
            <?= $form->field($model, 'email')->textInput(['maxlength' => 64]) ?>
            <div class="hr-line-dashed"></div>
            <?= $form->field($model, 'status')->radioList( Team::getStatuses() ) ?>
            <div class="hr-line-dashed"></div>
            <?= $form->field($model, 'description')->textArea(); ?>
            <!-- <?= $form->field($model, 'description')->textInput(['maxlength' => 512]) ?> -->
            <div class="hr-line-dashed"></div>
            <?= $form->defaultButtons() ?>
            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
