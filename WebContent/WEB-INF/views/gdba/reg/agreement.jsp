<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="pku" uri="/WEB-INF/tld/pku.tld" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@include file="/WEB-INF/layouts/variables.jsp" %>
<title>广东省网上办事大厅-省公安厅</title>
<link rel="stylesheet" href="${ctx}/static/dev/apps/framework/css/eg_gdba.css?VERSION=${version}"/>
<script src="${ctx}/static/dev/apps/framework/js/eg_gdba2.js?VERSION=${version}"></script>
<script>
    // 预加载所有字典
    +function () {
        var simpleDicName,
                urlPrefix,
                urlSuffix,
                doc,
                header,
                link,
                i, len
                ;
        doc = window.document;
        header = doc.getElementsByTagName( "head" )[ 0 ];
        urlPrefix = "http://pkusoft.gz.bcebos.com/";
        urlSuffix = ".xml";
        simpleDicName = [
            //"DIC_GENDER",
            //"DIC_NATION",
            //"DIC_CLAN"
        ];

        for ( i = 0, len = simpleDicName.length; i < len; i++ ) {
            link = doc.createElement( "link" );
            link.type = "text/xml";
            link.rel = "stylesheet";
            link.href = urlPrefix + simpleDicName[ i ] + urlSuffix;
            header.appendChild( link );
            console.info( link );
        }

    } ();
</script>
</head>
<body>


<!-- 头部 -->
<div class="wrap header">
    <div class="top">
        <span class="fhbsdt"><a href="http://www.gdbs.gov.cn" title="返回办事大厅">返回省办事大厅</a></span>
<span class="navTop">
<a href="http://www.gdga.gov.cn/" title="部门首页" target="_blank">部门首页</a><a href="http://www.gdga.gov.cn/wsbs/zwgk"
                                                                          target="_blank" title="政务公开">政务公开</a><a
        href="http://www.gdbs.gov.cn/portal/investApproval/qyInvestIndex.seam" target="_blank" title="投资审批">投资审批</a><a
        href="javaScript:void(0)" class="on" title="网上办事">网上办事</a><a href="http://www.gdbs.gov.cn/portal/zmhd/zmhd.seam"
                                                                     target="_blank" title="政民互动">政民互动</a><a
        href="http://www.gdbs.gov.cn/portal/xnjc/dzjc_index.seam" title="效能监察" target="_blank" id="noBordR">效能监察</a>
</span>
        <span class="yhdl"><a href="" title="用户登录">用户登录</a></span>
    </div>
    <div class="banner">
    </div>
</div>
<!-- 头部 end -->


<!-- 中间内容部分-->
<div class="wrap clearfix main page-agreement" >
    <h3 class="text-center title-header">设立保安服务公司行政许可网上申请须知</h3>
    <h4 class="title-module">一、设立条件</h4>
    <ul>
        <li>按照《保安服务管理条例》的规定，保安服务公司应当具备下列条件：
            <ol>
                <li>有不低于人民币100万元的注册资本；</li>
                <li>拟任的保安服务公司法定代表人和主要管理人员应当具备任职所需的专业知识和有关业务工作经验，无被刑事处罚、劳动教养、收容教育、强制隔离戒毒或者被开除公职、开除军籍等不良记录； </li>
                <li>有与所提供的保安服务相适应的专业技术人员，其中法律、行政法规有资格要求的专业技术人员，应当取得相应的资格； </li>
                <li>有住所和提供保安服务所需的设施、装备；</li>
                <li>有健全的组织机构和保安服务管理制度、岗位责任制度、保安员管理制度。</li>
            </ol>
        </li>
        <li>从事武装守护押运服务的保安服务公司，应当符合国务院公安部门对武装守护押运服务的规划、布局要求，除了具备上述的条件之外，还要符合下列条件：
            <ol>
                <li>有不低于人民币1000万元的注册资本；</li>
                <li>国有独资或者国有资本占注册资本总额的51%以上；</li>
                <li>有符合《专职守护押运人员枪支使用管理条例》规定条件的守护押运人员；</li>
                <li>有符合国家标准或者行业标准的专用运输车辆以及通信、报警设备。</li>
            </ol>
        </li>
    </ul>

    <h4 class="title-module">二、办理流程</h4>
    <p>1.提出申请。申请人登陆互联网省网上办事大厅（<a href="http://www.gdbs.gov.cn" target="_blank">http://www.gdbs.gov.cn</a>），进入“网上办事”--“部门服务”--“省公安厅”，选择具体的保安服务行政许可（审批）事项。根据国务院《保安服务管理条例》（以下简称《条例》、）及公安部《公安机关实施保安服务管理条例办法》（以下简称《办法》）有关规定，按照页面要求，如实填写相关信息，提交申请；成功提交申请后，系统自动生成业务申办回执，上载有申办流水号、业务主管部门、主管部门地址、业务咨询及投诉电话等信息。申请人凭申办流水号通过网上办事大厅可进行业务办理进度、审批结果查询。</p>
    <p>2.递交材料。申请人网上提交申请后，应在15天内下载填写打印业务申请表，并连同申请材料原件1份、复印件2份送递交给申办回执上载明的业务主管部门，逾期不交系统将自动作出不予受理决定。</p>
    <p>3.部门审批。业务主管部门审核申请材料，作出是否受理申请决定。受理申请的，出具受理回执，并在30个工作日内完成审批工作，作出决定。</p>

    <h4 class="title-module">三、需提交材料</h4>
    <ul>
        <li>申请人在预受理环节填写打印《<a href="https://gdba.gdga.gov.cn:8090/web/download/10115600000694000000000000.docx" target="_blank">保安服务公司申请设立审批表</a>》，连同下述材料原件1份、复印件2份送回执中注明的业务受理部门。
            <ol>
                <li>设立申请书（应当载明拟设立保安服务公司的名称、住所、注册资本、股东及出资额、经营范围等内容）；</li>
                <li>依法设立且具有法定资格的验资机构出具的100万元以上注册资本验资证明，属于国有资产的，应当依照有关法律、行政法规的规定进行资产评估，并提供有关文件；</li>
                <li>拟任的保安服务公司法定代表人和总经理、副总经理等主要管理人员的有效身份证件、简历，保安师资格证书复印件， 5年以上军队、公安、安全、审判、检察、司法行政或者治安保卫、保安经营管理工作经验证明，县级公安机关开具的无被刑事处罚、劳动教养、收容教育、强制隔离戒毒证明； </li>
                <li>拟设保安服务公司住所的所有权或者使用权的有效证明文件和提供保安服务所需的有关设备、交通工具等材料； </li>
                <li>专业技术人员名单和法律、行政法规有资格要求的资格证明；</li>
                <li>组织机构和保安服务管理制度、岗位责任制度、保安员管理制度材料；</li>
                <li>工商行政管理部门核发的企业名称预先核准通知书。</li>
            </ol>
        </li>
        <li>申请设立提供武装守护押运服务的保安服务公司，除向设区市的公安机关提交上述材料外，还应当提交下列材料：
            <ol>
                <li>1000万元以上注册资本的有效证明文件；</li>
                <li>出资属国有独资或者国有资本占注册资本总额51%以上的有效证明文件；</li>
                <li>符合《专职守护押运人员枪支使用管理条例》规定条件的守护押运人员的材料；</li>
                <li>符合国家或者行业标准的专用运输车辆以及通信、报警设备的材料；</li>
                <li>枪支安全管理制度和保管设施情况的材料。</li>
            </ol>
        </li>
        <li>申请设立中外合资经营、中外合作经营或者外资独资经营的保安服务公司（以下统称外资保安服务公司），除了向公安机关提交前述材料外，还应当提交下列材料：
            <ol>
                <li>中外合资、中外合作合同；</li>
                <li>外方的资信证明和注册登记文件；</li>
                <li>拟任的保安服务公司法定代表人和总经理、副总经理等主要管理人员为外国人的，须提供在所属国家或者地区无被刑事处罚记录证明（原居住地警察机构出具并经公证机关公证）、5年以上保安经营管理工作经验证明、在华取得的保安师资格证书复印件。</li>
            </ol>
        </li>
    </ul>

    <h4 class="title-module">四、业务受理机构</h4>
    <p>拟设公司所在地地级以上市公安机关治安管理部门。</p>
    <h4 class="title-module">五、审批时限</h4>
    <p>有关单位将在受理申请之日起30个工作日内完成审批。</p>

    <div class="agreement-container">
        <a type="button" class="btn btn-info btn-agree" href="${ ctx }/gdba/anno/reg/bizcode">同意</a>
        <a href="javascript:window.history.go(-1);void(0)">不同意</a>
    </div>

</div>
<!-- 中间内容部分 end -->


<!-- 底部内容部分-->
<table width="996" height="64" border="0" align="center" cellpadding="0" cellspacing="0" class="bottomlink">
    <tbody>
    <tr>
        <td><a href="http://www.gdga.gov.cn/jmlx/zxyw/" target="_blank" title="我要咨询"><img
                src="${ctx}/static/dev/apps/framework/images/bsdt/bottombutten1.png"></a></td>
        <td><a href="http://www.gdga.gov.cn" title="我要查询" target="_blank"><img src="${ctx}/static/dev/apps/framework/images/bsdt/bottombutten2.png"></a>
        </td>
        <td><a href="http://www.gdbs.gov.cn/portal/star/evaluate1.seam" title="我要评议" target="_blank"><img
                src="${ctx}/static/dev/apps/framework/images/bsdt/bottombutten3.png"></a></td>
        <td><a href="http://www.gdga.gov.cn/wsbs/complaints/" title="我要投诉" target="_blank"><img
                src="${ctx}/static/dev/apps/framework/images/bsdt/bottombutten4.png"></a></td>
    </tr>
    </tbody>
</table>
<table width="996" height="64" border="0" align="center" cellpadding="0" cellspacing="0" class="bottomword">
    <tbody>
    <tr>
        <td height="63" align="center" valign="middle" >
            <table width="971" border="0" cellspacing="0" cellpadding="0">
                <tbody>
                <tr>
                    <td width="758" height="37" align="left" valign="middle">
                        <table width="700" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td width="52" style="border-right:#ffffff 2px solid;"></td>
                                <td width="20" height="25">&nbsp;</td>
                                <td width="628" height="25"><a href="http://www.gdga.gov.cn" target="_blank"><font
                                        color="#ffffff">建设单位:广东省公安厅</font></a><font color="#FFFFFF">&nbsp;&nbsp;&nbsp;&nbsp;备案/许可证号:粤ICP备05013198号</font>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                    <td width="213" align="center" valign="middle">
                        <table width="210" border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                            <tr>
                                <td height="20" align="center" valign="middle" style="border-right:#6dd8ee solid 1px;">
                                    <a href="http://www.gdga.gov.cn/wzxx/200910/t20091013_391968.html" title="网站地图"
                                       target="_blank"><font color="#6dd8ee">网站地图</font></a></td>
                                <td align="center" valign="middle"><a
                                        href="http://www.gdga.gov.cn/wzxx/200910/t20091013_391962.html" title="联系我们"
                                        target="_blank"><font color="#6dd8ee">联系我们</font></a></td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
<!-- 底部内容部分 end -->


</body>
</html> 

</body>
</html>