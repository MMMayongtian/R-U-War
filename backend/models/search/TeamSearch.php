<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2017-08-13 12:12
 */

namespace backend\models\search;

use Yii;
use common\models\Team;
use backend\behaviors\TimeSearchBehavior;
use backend\components\search\SearchEvent;
use yii\data\ActiveDataProvider;

class TeamSearch extends Team implements SearchInterface
{

    public function behaviors()
    {
        return [
            TimeSearchBehavior::className()
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['membername', 'description', 'email', 'created_at', 'updated_at'], 'string'],
            ['status', 'integer'],
        ];
    }

    /**
     * @param array $params
     * @param array $options
     * @return \yii\data\ActiveDataProvider
     * @throws \yii\base\InvalidConfigException
     */
    public function search(array $params = [], array $options = [])
    {
        $query = Team::find();
        /** @var ActiveDataProvider $dataProvider */
        $dataProvider = Yii::createObject([
            'class' => ActiveDataProvider::className(),
            'query' => $query,
            'sort' => [
                'defaultOrder' => [
                    'created_at' => SORT_DESC,
                    'updated_at' => SORT_DESC,
                    'membername' => SORT_ASC,
                ]
            ]
        ]);
        $this->load($params);
        if (! $this->validate()) {
            return $dataProvider;
        }
        $query->andFilterWhere(['like', 'membername', $this->membername])
            ->andFilterWhere(['like', 'email', $this->email])
            ->andFilterWhere(['=', 'status', $this->status]);

        $this->trigger(SearchEvent::BEFORE_SEARCH, Yii::createObject([ 'class' => SearchEvent::className(), 'query'=>$query]));
        return $dataProvider;
    }

}