<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2017-10-03 22:03
 */

namespace backend\controllers;

use Yii;
use common\services\CommentServiceInterface;
use backend\actions\ViewAction;
use backend\actions\UpdateAction;
use backend\actions\IndexAction;
use backend\actions\DeleteAction;

/**
 * Comment management
 * - data:
 *          table comment
 * -description:
 *         article's comment
 *
 * Class CommentController
 * @package backend\controllers
 */
class CommentController extends \yii\web\Controller
{
    /**
     * @return array
     * @throws \yii\base\InvalidConfigException
     */
    public function actions()
    {
        /** @var CommentServiceInterface $service */
        $service = Yii::$app->get(CommentServiceInterface::ServiceName);
        return [
            'index' => [
                'class' => IndexAction::className(),
                'data' => function(array $query)use($service){
                    $result = $service->getList($query);
                    return [
                        'dataProvider' => $result['dataProvider'],
                        'searchModel' => $result['searchModel'],
                    ];
                }
            ],
            'view-layer' => [
                'class' => ViewAction::className(),
                'data' => function($id)use($service){
                    return [
                        'model' => $service->getDetail($id),
                    ];
                },
            ],
            'update' => [
                'class' => UpdateAction::className(),
                'doUpdate' => function($id, array $postData)use($service){
                    return $service->update($id, $postData);
                },
                'data' => function($id, $updateResultModel)use($service){
                    $model = $updateResultModel === null ? $service->getDetail($id) : $updateResultModel;
                    return [
                        'model' => $model,
                    ];
                },
            ],
            'delete' => [
                'class' => DeleteAction::className(),
                'doDelete' => function($id)use($service){
                    return $service->delete($id);
                },
            ],
        ];
    }

}