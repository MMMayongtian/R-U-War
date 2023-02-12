<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2016-06-19 00:21
 */

namespace frontend\widgets;

use yii\helpers\ArrayHelper;
use yii\widgets\LinkPager;


class TeamListView extends \yii\widgets\ListView
{
    /**
     * @var string 布局
     */
    public $layout = "{items}\n<div class=\"pagination\"></div>";

    /**
     * @var int 缩率图宽
     */
    public $thumbWidth = 220;

    /**
     * @var int 缩略图高
     */
    public $thumbHeight = 150;

    public $itemOptions = [
        'tag' => 'div',
        'class' => 'member'
    ];

    /**
     * @var string 模板
     */
    //public $template = "<div class='teamMem'>{membername},{description},{email}<img src='//localhost:8080{imgUrl}'></div>";
    public $template = "    <div class='card'>
                                <div class='circle'>
                                    <div class='imgBox'>
                                        <img src='//localhost:8080{imgUrl}'>
                                    </div>
                                </div>
                                <div class='content'>
                                    <a href='http://github.com/MMMayongtian' target='_blank'></a>
                                    <h3>Call-me-{membername}</h3>
                                    <div class='textIcon'>
                                        
                                        <h4>{email}</h4>
                                        <a href='http://github.com/MMMayongtian' target='_blank'><i class='fa fa-arrow-right' aria-hidden='true'></i></a>
                                    </div>
                                </div>
                            </div>";
    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();

        if(empty($this->itemView)) {
            $this->itemView = function ($model, $key, $index) {
                /** @var $model \common\models\Article */
                $description = $model->description;
                $membername = $model->membername;
                $imgUrl = $model->avatar;
                $email = $model->email;
                return str_replace([
                    '{membername}',
                    '{description}',
                    '{imgUrl}',
                    '{email}'
                ], [
                    $membername,
                    $description,
                    $imgUrl,
                    $email
                ], $this->template);
            };
        }
    }

    /**
     * @inheritdoc
     */
    public function renderPager()
    {
        $pagination = $this->dataProvider->getPagination();
        if ($pagination === false || $this->dataProvider->getCount() <= 0) {
            return '';
        }
        /* @var $class LinkPager */
        $pager = $this->pager;
        $class = ArrayHelper::remove($pager, 'class', LinkPager::className());
        $pager['pagination'] = $pagination;
        $pager['view'] = $this->getView();
        return $class::widget($pager);
    }

}
