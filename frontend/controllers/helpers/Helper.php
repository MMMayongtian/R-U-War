<?php
/**
 * Author: lf
 * Blog: https://blog.feehi.com
 * Email: job@feehi.com
 * Created at: 2020-02-21 14:06
 */

namespace frontend\controllers\helpers;

use Yii;
use common\services\AdServiceInterface;
use common\services\ArticleServiceInterface;
use common\services\BannerServiceInterface;


class Helper
{
    public static function getCommonInfos()
    {
        /** @var ArticleServiceInterface $articleService */
        $articleService = Yii::$app->get(ArticleServiceInterface::ServiceName);
        /** @var BannerServiceInterface $bannerService */
        $bannerService = Yii::$app->get(BannerServiceInterface::ServiceName);
        $headLineArticles = $articleService->getFlagHeadLinesArticles(4);
        $indexBanners = $bannerService->getBannersByAdType("index");
        return [
            'headLinesArticles' => $headLineArticles,
            "indexBanners" => $indexBanners,
        ];
    }
}