<div class="well-nav">
    <ul class="layui-nav layui-nav-tree layui-nav-side" lay-filter="nav">
        <li class="layui-nav-item <eq name='mark' value='main'>layui-this</eq>"><a href="{:U('Admin/index')}"><i class="layui-icon">&#xe638;</i>&emsp;Main</a></li>
        <li class="layui-nav-item">
            <a href="javascript:;"><i class="layui-icon">&#xe63c;</i>&emsp;Article</a>
            <dl class="layui-nav-child">
                <volist name="typeList" id="vo">
                <dd class="<eq name='mark' value='list'><eq name='type' value='$vo.id'>layui-this</eq></eq>"><a href="{:U('Article/articleList',array('type'=>$vo['id']))}">&emsp;<i class="layui-icon">&#xe602;</i>&emsp;{$vo.typename}</a></dd>
                </volist>
            </dl>
        </li>
        <li class="layui-nav-item <eq name='mark' value='add'>layui-this</eq>"><a href="{:U('Article/add')}"><i class="layui-icon">&#xe608;</i>&emsp;Write New</a></li>
        <li class="layui-nav-item <eq name='mark' value='about'>layui-this</eq>"><a href="{:U('Admin/about')}"><i class="layui-icon">&#xe612;</i>&emsp;About</a></li>
        <li class="layui-nav-item"><a href="{:U('Index/logout')}"><i class="layui-icon">&#xe64d;</i>&emsp;Logout</a></li>
    </ul>
</div>
<script>
layui.use('element', function(){
    var element = layui.element();
});
</script>