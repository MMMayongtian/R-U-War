<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2017-03-15 21:16
 */

/**
 * @var $this yii\web\View
 * @var $model common\models\Options
 * @var $timezones array
 * @var $frontendSupportLanguages array
 */

use backend\widgets\ActiveForm;
use common\libs\Constants;

$this->title = Yii::t('app', 'Website Setting');
$this->params['breadcrumbs'][] = Yii::t('app', 'Website Setting');
?>
<div class="row">
    <div class="col-sm-12">
        <div class="ibox float-e-margins">
            <?=$this->render('/widgets/_ibox-title')?>
            <div class="ibox-content">
                <?php $form = ActiveForm::begin(); ?>
                <?php
                $template = "{label}\n<div class='col-sm-8'>{input}\n{error}</div>\n{hint}<div class='col-sm-2'><span class='tips'> {{%TIPS%}}</span></div>";
                ?>
                <?= $form->field($model, 'website_title', ['template' => str_replace("{{%TIPS%}}", "", $template)]) ?>
                <div class="hr-line-dashed"></div>
                <?= $form->field($model, 'website_url', ['template' => str_replace("{{%TIPS%}}", "<i class='fa fa-info-circle'></i> " . yii::t('app', 'Only filled in can show picture (Recommend start with // adapt to http or https)'), $template)]) ?>
                <div class="hr-line-dashed"></div>
                <?= $form->field($model, 'seo_keywords', ['template' => str_replace("{{%TIPS%}}", "", $template)]) ?>
                <div class="hr-line-dashed"></div>
                <?= $form->field($model, 'seo_description', ['template' => str_replace("{{%TIPS%}}", "", $template)])->textarea() ?>
                <div class="hr-line-dashed"></div>
                <?= $form->field($model, 'website_comment', ['template' => str_replace("{{%TIPS%}}", "", $template)])->radioList(Constants::getYesNoItems()) ?>
                <div class="hr-line-dashed"></div>
                <?= $form->field($model, 'website_email', ['template' => str_replace("{{%TIPS%}}", "", $template)]) ?>
                <div class="hr-line-dashed"></div>
                <?= $form->field($model, 'website_status', ['template' => str_replace("{{%TIPS%}}", "", $template)])->radioList(Constants::getWebsiteStatusItems()) ?>
                <div class="hr-line-dashed"></div>
                <?= $form->defaultButtons() ?>
                <?php ActiveForm::end(); ?>
            </div>
        </div>
    </div>
</div>
