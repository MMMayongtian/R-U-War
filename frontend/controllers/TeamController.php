<?php

namespace frontend\controllers;

use Yii;
use common\services\TeamServiceInterface;
use backend\actions\IndexAction;

/**
 * TeamController implements the CRUD actions for Team model.
 */
class TeamController extends \yii\web\Controller
{
    public function actions()
    {
        /** @var TeamServiceInterface $service */
        $service = Yii::$app->get(TeamServiceInterface::ServiceName);
        return [
            'index' => [
                'class' => IndexAction::className(),
                'data' => function($query, $indexAction) use($service){
                    $result = $service->getList($query);
                    return [
                        'dataProvider' => $result['dataProvider'],
                        'searchModel' => $result['searchModel'],                    ];
                }
            ],
        ];
    }
}
