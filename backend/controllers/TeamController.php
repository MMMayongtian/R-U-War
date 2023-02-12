<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2016-03-23 15:13
 */

namespace backend\controllers;

use Yii;
use common\services\TeamServiceInterface;
use backend\actions\ViewAction;
use backend\actions\CreateAction;
use backend\actions\UpdateAction;
use backend\actions\IndexAction;
use backend\actions\DeleteAction;
use backend\actions\SortAction;


/**
 * Article management
 * - data:
 *          table article article_content
 * - description:
 *          article management
 *
 * Class ArticleController
 * @package backend\controllers
 */
class TeamController extends \yii\web\Controller
{

    /**
     * @auth
     * - item group=内容 category=文章 description-get=列表 sort=300 method=get
     * - item group=内容 category=文章 description-get=查看 sort=301 method=get  
     * - item group=内容 category=文章 description=创建 sort-get=302 sort-post=303 method=get,post  
     * - item group=内容 category=文章 description=修改 sort=304 sort-post=305 method=get,post  
     * - item group=内容 category=文章 description-post=删除 sort=306 method=post  
     * - item group=内容 category=文章 description-post=排序 sort=307 method=post  
     * @return array
     * @throws \yii\base\InvalidConfigException
     */
    public function actions()
    {
        /** @var TeamServiceInterface $service */
        $service = Yii::$app->get(TeamServiceInterface::ServiceName);
        return [
            'index' => [
                'class' => IndexAction::className(),
                'data' => function($query)use($service){
                    $result = $service->getList($query);
                    return [
                        'dataProvider' => $result['dataProvider'],
                        'searchModel' => $result['searchModel'],
                    ];
                }
            ],
            'view-layer' => [
                'class' => ViewAction::className(),
                'data' => function($id) use($service){
                    return [
                        'model' => $service->getDetail($id),
                    ];
                },
            ],
            'create' => [
                'class' => CreateAction::className(),
                'doCreate' => function($postData) use($service){
                    return $service->create($postData, ['scenario'=>'create']);
                },
                'data' => function($createResultModel) use($service){
                    $model = $createResultModel === null ? $service->newModel(['scenario'=>'create']) : $createResultModel;
                    return [
                        'model' => $model,
                    ];
                },
            ],
            'update' => [
                'class' => UpdateAction::className(),
                'doUpdate' => function($id, $postData) use($service){
                    return $service->update($id, $postData, ['scenario'=>'update']);
                },
                'data' => function($id, $updateResultModel) use($service){
                    $model = $updateResultModel === null ? $service->getDetail($id, ['scenario'=>'update']) : $updateResultModel;
                    return [
                        'model' => $model,
                    ];
                },
            ],
            'delete' => [
                'class' => DeleteAction::className(),
                'doDelete' => function($id) use($service){
                    return $service->delete($id);
                },
            ],
            'sort' => [
                'class' => SortAction::className(),
                'doSort' => function($id, $sort) use($service){
                    return $service->sort($id, $sort);
                },
            ],
        ];
    }
}