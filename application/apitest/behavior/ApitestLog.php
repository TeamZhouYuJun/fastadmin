<?php

namespace app\apitest\behavior;

class ApitestLog
{
    public function run(&$params)
    {
        if (request()->isPost()) {
            \app\apitest\model\ApitestLog::record();
        }
    }
}
