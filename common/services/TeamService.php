<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2020-01-30 14:40
 */

namespace common\services;

use Yii;
use backend\models\search\TeamSearch;
use common\models\Team;

class TeamService extends Service implements TeamServiceInterface
{

    public function getSearchModel(array $options = [])
    {
        return new TeamSearch();
    }

    public function getModel($id, array $options = [])
    {
        $model = Team::findOne($id);
        if( isset($options['scenario']) && !empty($options['scenario']) ){
            if($model !== null) {
                $model->setScenario($options['scenario']);
            }
        }
        return $model;
    }

    public function newModel(array $options = [])
    {
        $model = new Team();
        $model->loadDefaultValues();
        isset($options['scenario']) && $model->setScenario($options['scenario']);
        return $model;
    }

    public function create(array $postData, array $options = [])
    {
        $model = $this->newModel($options);
        if( $model->load($postData) ){
            if( $model->save() ) {
                return true;
            }
        }
        return $model;
    }
    
}