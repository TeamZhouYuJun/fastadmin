<?php

namespace app\apiapi\behavior;

class ApiapiLog
{
    public function run(&$params)
    {
        if (request()->isPost()) {
           // \app\apiapi\model\ApiapiLog::record();
        }
    }
}
