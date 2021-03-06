define(['jquery', 'bootstrap', 'backend', 'table', 'form'], function ($, undefined, Backend, Table, Form) {


    var Controller = {
        index: function () {
            // 初始化表格参数配置
            Table.api.init({
                extend: {
                    index_url: 'jobhunter/index',
                    add_url: 'jobhunter/add',
                    edit_url: 'jobhunter/edit',
                    del_url: 'jobhunter/del',
                    multi_url: 'jobhunter/multi',
                    table: 'user',
                }
            });

            var table = $("#table");

            // 初始化表格
            table.bootstrapTable({
                url: $.fn.bootstrapTable.defaults.extend.index_url,
                pk: 'id',
                sortName: 'id',
                columns: [
                    [
                        {checkbox: true},
                        {field: 'id', title: __('Id'), sortable: true},
                        {field: 'full_name', title: __('姓名'), width:120,operate: 'LIKE'},
                        {field: 'age', title: __('年龄'),width: 80},
                        {field: 'phone', title: __('手机号码'), operate: 'LIKE'},
                        {field: 'gender', title: __('性别'),searchList: {1: '男', 0: '女'} },
                        {field: 'graduate_school', title: __('毕业院校'), operate: 'LIKE'},
                        {field: 'profession_id', title: __('工种'), operate: 'LIKE', searchList: profession},  // 变量来自  index.html 行首声明 profession
                        {field: 'profession_level_id', title: __('工种等级'),  searchList: professionLevels ,operate: '='},  // 变量来自  index.html 行首声明 professionLevels
                        {field: 'operate', title: __('Operate'), table: table, events: Table.api.events.operate, formatter: Table.api.formatter.operate}
                    ]
                ]
            });

            // 为表格绑定事件
            Table.api.bindevent(table);
        },
        add: function () {
            Controller.api.bindevent();
        },
        edit: function () {
            Controller.api.bindevent();
        },
        api: {
            bindevent: function () {
                Form.api.bindevent($("form[role=form]"));
            }
        }
    };
    return Controller;
});
