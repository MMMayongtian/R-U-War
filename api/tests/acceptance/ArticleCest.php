<?php
namespace api\tests;

use api\tests\AcceptanceTester;

class ArticleCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    public function checkIndex(AcceptanceTester $I)
    {
        $I->sendGET('/articles');
        $I->haveHttpHeader("X-Pagination-Current-Page", 1);
    }

    public function checkView(AcceptanceTester $I)
    {
        $I->sendGET('/articles/1');
        $I->seeResponseContains("title");
        $I->seeResponseContains("description");
    }
}
