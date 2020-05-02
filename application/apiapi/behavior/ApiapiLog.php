<?php

namespace app\admin\behavior;

class ApiapiLog
{
    public function run(&$params)
    {
        if (request()->isPost()) {
            \app\apiapi\model\ApiapiLog::record();
        }
    }
}
