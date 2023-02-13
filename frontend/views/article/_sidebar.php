<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2016-06-21 14:26
 */

/**
 * @var $rightAd1 \backend\models\form\AdForm
 * @var $rightAd2 \backend\models\form\AdForm
 */

use frontend\widgets\LatestCommentView;
use frontend\widgets\MessageBoardView;

?>
<aside class="sidebar">

    <div class="widget d_postlist">
        <div class="title">
            <h2>
                <sapn class="title_span"><?= Yii::t('frontend', 'Message Board') ?></sapn>
                
            </h2>
        </div>
        <?=MessageBoardView::widget()?>
    </div>

    <div class="widget d_comment">
        <div class="title">
            <h2>
                <sapn class="title_span"><?= Yii::t('frontend', 'Latest Comments') ?></sapn>
            </h2>
        </div>
       <?=LatestCommentView::widget()?>
    </div>
</aside>
