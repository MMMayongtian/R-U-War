<?php


namespace console\controllers;


use Yii;
use console\helpers\FileHelper;
use yii\console\Controller;
use yii\helpers\Console;

class ToolController extends Controller
{

    public $translateFiles = [
        "@yii/../../../backend/messages/zh-TW/menu.php"
    ];
    public function actionTranslate()
    {

    }

    public function actionTest()
    {
        $result = \common\models\Menu::find()->asArray()->all();
        $columns = array_keys($result[0]);
        $str = "[";
        foreach ($columns as $column){
            $str .= "'{$column}',";
        }
        $str = rtrim($str, ',');
        $str .= "]";
        file_put_contents('db.txt', $str);

        $str = "\n\n[\n";
        foreach ($result as $val){
            $str .= "  [";
            foreach ($val as $v){
                $str .= "'{$v}',";
            }
            $str = rtrim($str, ',');
            $str .= "],\n";
        }
        $str .= "]\n";
        //var_dump($str);exit;
        file_put_contents('db.txt', $str, FILE_APPEND);exit;
        $str = '';
        $authManager = Yii::$app->getAuthManager();
        $permissions = $authManager->getPermissions();
        $columns = array_keys((array)$permissions['/setting/website:GET']);
        $str = "[";
        foreach ($columns as $column){
            $str .= "'{$column}',";
        }
        $str .= "]\n";
        foreach ($permissions as $permission){
            $str .= "  [";
            $i = 1;
            foreach ($permission as $v){
                if( $i == 5 ){
                    $str .= "{$v},";
                }else {
                    $str .= "'{$v}',";
                }
                $i++;
            }
            $str = rtrim($str, ',');
            $str .= "],\n";
        }
        file_put_contents('db.txt', $str);
    }

    public function actionTag()
    {
        $articles = \common\models\Article::find()->asArray()->all();
        $columns = ['aid', 'key', 'value', 'created_at'];
        $str = "[";
        foreach ($columns as $column){
            $str .= "'{$column}',";
        }
        $str = rtrim($str, ',');
        $str .= "]";
        file_put_contents('db.txt', $str);

        $str = "\n\n[\n";
        $aaa = [];
        foreach ($articles as $article){
            $tags = explode(',', $article['tag']);
            foreach ($tags as $tag){
                if( $tag == '' ) continue;
                $aaa[] = [
                    "aid" => $article['id'],
                    "key" => "tag",
                    "value" => $tag,
                    "created_at" => time(),
                ];
            }
        }
        foreach ($aaa as $val){
            $str .= "  [";
            foreach ($val as $v){
                $str .= "'{$v}',";
            }
            $str = rtrim($str, ',');
            $str .= "],\n";
        }
        $str .= "]\n";
        //var_dump($str);exit;
        file_put_contents('db.txt', $str, FILE_APPEND);exit;
        $str = '';
        $authManager = Yii::$app->getAuthManager();
        $permissions = $authManager->getPermissions();
        $columns = array_keys((array)$permissions['/setting/website:GET']);
        $str = "[";
        foreach ($columns as $column){
            $str .= "'{$column}',";
        }
        $str .= "]\n";
        foreach ($permissions as $permission){
            $str .= "  [";
            $i = 1;
            foreach ($permission as $v){
                if( $i == 5 ){
                    $str .= "{$v},";
                }else {
                    $str .= "'{$v}',";
                }
                $i++;
            }
            $str = rtrim($str, ',');
            $str .= "],\n";
        }
        file_put_contents('db.txt', $str);
    }
}


class translate{
    public function getFiles(){
        return
    }
}