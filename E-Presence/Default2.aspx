<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta name="Description" content="Explains how to simulate scheduled task using ASP.NET only, using Timer, Thread or Cache expiration.">
<meta name="Keywords" content="scheduled tasks">
<script async="" src="Scheduled-Tasks-Timer_files/cbgapi.loaded_1"></script><script async="" src="Scheduled-Tasks-Timer_files/cbgapi.loaded_0"></script><script gapi_processed="true" type="text/javascript" src="Scheduled-Tasks-Timer_files/plusone.js">

    { parsetags: 'explicit' }
 
</script>
<link href="Scheduled-Tasks-Timer_files/Style4.css" rel="stylesheet" type="text/css"><meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>
	Scheduled Tasks in ASP.NET
</title><style>.gc-bubbleDefault{background-color:transparent !important;text-align:left;padding:0 !important;margin:0 !important;border:0 !important;table-layout:auto !important}.gc-reset{background-color:transparent !important;border:0 !important;padding:0 !important;margin:0 !important;text-align:left}.pls-bubbleTop{border-bottom:1px solid #ccc !important}.pls-topTail,.pls-vertShimLeft,.pls-contentLeft{background-image:url(//ssl.gstatic.com/s2/oz/images/stars/po/bubblev1/border_3.gif) !important}.pls-topTail{background-repeat:repeat-x !important;background-position:bottom !important}.pls-vertShim{background-color:#fff !important;text-align:right}.pls-vertShimLeft{background-repeat:repeat-y !important;background-position:right !important;height:4px}.pls-vertShimRight{height:4px}.pls-confirm-container .pls-vertShim{background-color:#fff3c2 !important}.pls-contentWrap{background-color:#fff !important;position:relative !important;vertical-align:top}.pls-contentLeft{background-repeat:repeat-y;background-position:right;vertical-align:top}.pls-dropRight{background-image:url(//ssl.gstatic.com/s2/oz/images/stars/po/bubblev1/bubbleDropR_3.png) !important;background-repeat:repeat-y !important;vertical-align:top}.pls-vert,.pls-tailleft,.pls-dropTR .pls-dropBR,.pls-dropBL,.pls-vert img{vertical-align:top}.pls-dropBottom{background-image:url(//ssl.gstatic.com/s2/oz/images/stars/po/bubblev1/bubbleDropB_3.png) !important;background-repeat:repeat-x !important;width:100%;vertical-align:top}.pls-topLeft{background:inherit !important;text-align:right;vertical-align:bottom}.pls-topRight{background:inherit !important;text-align:left;vertical-align:bottom}.pls-bottomLeft{background:inherit !important;text-align:right}.pls-bottomRight{background:inherit !important;text-align:left;vertical-align:top}.pls-tailtop,.pls-tailright,.pls-tailbottom,.pls-tailleft{display:none;position:relative}.pls-tailbottom,.pls-tailtop,.pls-tailright,.pls-tailleft,.pls-dropTR,.pls-dropBR,.pls-dropBL{background-image:url(//ssl.gstatic.com/s2/oz/images/stars/po/bubblev1/bubbleSprite_3.png) !important;background-repeat:no-repeat}.pls-tailbottom{background-position:-23px 0}.pls-confirm-container .pls-tailbottom{background-position:-23px -10px}.pls-tailtop{background-position:-19px -20px}.pls-tailright{background-position:0 0}.pls-tailleft{background-position:-10px 0}.pls-tailtop{vertical-align:top}.gc-bubbleDefault td{line-height:0;font-size:0}.pls-topLeft img,.pls-topRight img,.pls-tailbottom{vertical-align:bottom}.pls-bottomLeft img,.bubbleDropTR,.pls-dropBottomL img,.pls-dropBottom img,.pls-dropBottomR img,.pls-bottomLeft{vertical-align:top}.pls-dropTR{background-position:0 -22px}.pls-dropBR{background-position:0 -27px}.pls-dropBL{background-position:0 -16px}.pls-spacertop,.pls-spacerright,.pls-spacerbottom,.pls-spacerleft{position:static !important}.pls-spinner{bottom:0;position:absolute;left:0;margin:auto;right:0;top:0}</style></head>
<body>

 <table id="header" border="0" width="970"><tbody><tr><td align="left">
  <a href="http://www.beansoftware.com/"><img src="Scheduled-Tasks-Timer_files/Logo.jpg" alt="Bean Software Logo" border="0" height="80" width="149"></a></td>
  <td align="center">
  <iframe marginheight="0" marginwidth="0" src="Scheduled-Tasks-Timer_files/TopLeaderboard.htm" frameborder="0" height="90" scrolling="no" width="728"></iframe>
 </td></tr></tbody></table>
<table id="mainTable" border="0" width="970"><tbody><tr><td id="leftCol" valign="top">
<img src="Scheduled-Tasks-Timer_files/ep.gif" alt="" height="0" width="190">

    
<div class="tblDown"><span class="MenuCaption"><a href="http://www.beansoftware.com/Products.aspx">Products</a></span><br>
<span class="bulletMain">
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Database-Search-Solution/">Database Search Solution</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/SearchControl.aspx">(<b><span style="color:red">New Version</span></b>) Search Control</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/SEO-Pager-Control/">SEO Pager</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Highlighter.aspx">Highlighter</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Shortcut-Controls/">Shortcut Controls</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Crypt_Package.aspx">Crypt Package</a><br>
</span></div>
<div class="tblDown"><span class="MenuCaption"><a href="http://www.beansoftware.com/Free-ASP.NET-Controls/ASP.NET-Media-Player-Control.aspx">Free ASP.NET Controls</a></span><br>
<span class="bulletMain">
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Free-ASP.NET-Controls/Geotargeting-Component.aspx">Geotargeting Component</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Free-ASP.NET-Controls/ASP.NET-Media-Player-Control.aspx">ASP.NET Media Player Control</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Free-ASP.NET-Controls/JW-FLV-Control.aspx">Flash Video Player Control</a><br>
</span></div>
<div class="tblDown"><span class="MenuCaption"><a href="http://www.beansoftware.com/Custom-Programming.aspx">Services</a></span><br>
<span class="bulletMain">
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/ASP.NET-Telecommute-Jobs/">ASP.NET Telecommute Jobs</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/IP-Location-Lookup/">Free IP Location Lookup</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Test-Net-Regular-Expressions/">Test .Net Regular Expressions</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/CSS-Table-Div-Layouts/">CSS/Table/DIV Page Layouts</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Custom-Programming.aspx">Custom Programming</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Article-Sites-Master-List.aspx">Article Sites Master List</a><br>
</span></div>
<div class="tblDown"><span class="MenuCaption"><a href="http://www.beansoftware.com/Tutorials-Articles-Guides/Default.aspx">Articles</a></span><br>
<span class="bulletMain">
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/ASP.NET-Tutorials/">ASP.NET Tutorials</a><br>
  &nbsp; &nbsp; <a href="http://www.beansoftware.com/ASP.NET-FAQ/">ASP.NET FAQ</a><br>
  &nbsp; &nbsp; <a href="http://www.beansoftware.com/T-SQL-FAQ/">T-SQL FAQ</a><br>
  &nbsp; &nbsp; <a href="http://www.beansoftware.com/HTML-CSS-FAQ/">HTML/CSS FAQ</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Windows-Forms-Tutorials/">.NET Windows Forms</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/NET-Tutorials/">General .NET Framework</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Freelance-Tutorials/">Freelance Tutorials</a><br>
  &nbsp; &nbsp; <a href="http://www.beansoftware.com/Better-Working-Tutorials/">(<b><span style="color:red">New</span></b>) Better Working Tutorials</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Tutorials-Articles-Guides/Default.aspx#WebDomains">Web Domains</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Tutorials-Articles-Guides/Default.aspx#CreditCards">Accepting Credit Cards</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Tutorials-Articles-Guides/Default.aspx#AntiSpam">Anti Spam</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Tutorials-Articles-Guides/Default.aspx#MakeMoney">Make Money with Web Site</a><br>
</span></div>
<div class="tblDown"> &nbsp;<span class="MenuCaption"><a href="http://www.beansoftware.com/Default.aspx">Home</a></span><br>
<span class="bulletMain">
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Shop/">Shop</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Advertise.aspx">Advertise</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Write-For-Us.aspx">Write For Us</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Affiliate.aspx">Affiliate</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Newsletter/">Newsletter</a><br>
 &nbsp; &nbsp; <a href="http://www.beansoftware.com/Contact.aspx">Contact</a><br>
</span><br>
</div>


</td>
<td id="content" valign="top">

<!-- google_ad_section_start -->
<form action="http://www.google.com/cse" id="cse-search-box">
  <div>
    <input name="cx" value="partner-pub-9599772624225044:290focm14mh" type="hidden">
    <input name="ie" value="ISO-8859-1" type="hidden">
    <input name="q" size="75" type="text">
    <input name="sa" value="Search" type="submit">
  </div>
</form>
<script type="text/javascript" src="Scheduled-Tasks-Timer_files/brand"></script>

<h1>Scheduled Tasks in ASP.NET</h1>
<div style="height: 24px; width: 106px; display: inline-block; text-indent: 0px; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% transparent; border-style: none; float: none; line-height: normal; font-size: 1px; vertical-align: baseline;" id="plusone-div"><iframe title="+1" allowtransparency="true" src="Scheduled-Tasks-Timer_files/fastbutton.htm" name="I0_1354662052772" id="I0_1354662052772" vspace="0" tabindex="0" style="position: static; top: 0px; width: 106px; margin: 0px; border-style: none; left: 0px; visibility: visible; height: 24px;" marginwidth="0" marginheight="0" hspace="0" frameborder="0" scrolling="no" width="100%"></iframe></div>
<script type="text/javascript">

    gapi.plusone.render
(
    'plusone-div',
    {
        "data-annotation": "inline",
        "size": "standard",
        "count": "true"
    }
);
 
</script>





<p>Very often, there is a need to execute some code  on certain date and
 time, or to repeat execution in regular time intervals. In case of 
ASP.NET web application, that could be sending of reminder e-mails, 
analyze traffic data, creating reports, maintenance tasks etc. ASP.NET 
doesn't provide some straightforward way to schedule tasks. Also, only 
what HTTP protocol can do is to return some output as a response after  
receives web request.</p>
<table border="0"><tbody><tr><td>
<script type="text/javascript"><!--
google_ad_client = "pub-9599772624225044";
/* 250x250, stvoreno 2011.08.09 */
google_ad_slot = "6534954413";
google_ad_width = 250;
google_ad_height = 250;
//-->
</script>
<script type="text/javascript" src="Scheduled-Tasks-Timer_files/show_ads.js">
</script></td><td><script type="text/javascript"><!--
google_ad_client = "pub-9599772624225044";
/* 336x280, stvoreno 2011.08.09 */
google_ad_slot = "5127883936";
google_ad_width = 336;
google_ad_height = 280;
//-->
</script>
<script type="text/javascript" src="Scheduled-Tasks-Timer_files/show_ads.js">
</script></td></tr></tbody></table>

<p>Fortunately, there are numerous solutions to solve this problem. Scheduled tasks methods could be divided in two groups:
</p><p>- Pure ASP.NET methods, like using of timer, cache expiration or threads,<br>
  - Using of external application, like Windows Task Scheduler, Windows service, web hosting automation program etc.
</p><p>In this tutorial, I will show three ways to simulate scheduled 
tasks using ASP.NET only. To learn more about options for scheduled 
tasks in ASP.NET using external application see <a href="http://www.beansoftware.com/ASP.NET-Tutorials/Task-Scheduler-Windows-Service.aspx">Task Scheduler or Windows service in ASP.NET</a> tutorial.
</p><p>ASP.NET only methods are often an option if you have shared hosting, but they have some drawbacks. 
</p><h2>Scheduled tasks using threading</h2>
<p>Solution that uses threads is very simple. We'll use 
Application_Start procedure in Global.asax to initially start task. 
Then, in separate thread we'll call task again in regular time 
intervals. Code in Global.asax could look like this:
</p><p><b>[ C# ]</b></p>
<p><span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Application</span> <span style="color:#ff0000;">Language</span><span style="color:#0000ff;">="C#"</span> <span style="background:#ffee62;">%&gt;</span><br>
<span style="background:#ffee62;">&lt;%</span><span style="color:#008000;">-- We need this namespace to work with threads --</span><span style="background:#ffee62;">%&gt;</span><br>
<span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Import</span> <span style="color:#ff0000;">Namespace</span><span style="color:#0000ff;">="System.Threading"</span> <span style="background:#ffee62;">%&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;</span><span style="color:#a31515;">script</span> <span style="color:#ff0000;">runat</span><span style="color:#0000ff;">="server"&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">void</span> Application_Start(<span style="color:#0000ff;">object</span> sender, <span style="color:#2b91af; ">EventArgs</span> e) <br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// On application start, create an start separate thread</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#2b91af; ">ThreadStart</span> tsTask = <span style="color:#0000ff;">new</span> <span style="color:#2b91af; ">ThreadStart</span>(TaskLoop);<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#2b91af; ">Thread</span> MyTask = <span style="color:#0000ff;">new</span> <span style="color:#2b91af; ">Thread</span>(tsTask);<br>
 &nbsp;&nbsp;&nbsp;MyTask.Start();<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">static</span> <span style="color:#0000ff;">void</span> TaskLoop()<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// In this example, task will repeat in infinite loop</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// You can additional parameter if you want to have an option </span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// to stop the task from some page</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">while</span> (<span style="color:#0000ff;">true</span>)<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Execute scheduled task</span><br>
 &nbsp;&nbsp;&nbsp;ScheduledTask();<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Wait for certain time interval</span><br>
 &nbsp;&nbsp;&nbsp;System.Threading.<span style="color:#2b91af; ">Thread</span>.Sleep(<span style="color:#2b91af; ">TimeSpan</span>.FromHours(12));<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">static</span> <span style="color:#0000ff;">void</span> ScheduledTask()<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Task code which is executed periodically</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;/</span><span style="color:#a31515;">script</span><span style="color:#0000ff;">&gt;</span></p>
<p><b>[ VB.NET ]</b></p>
<p><span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Application</span> <span style="color:#ff0000;">Language</span><span style="color:#0000ff;">="VB"</span> <span style="background:#ffee62;">%&gt;</span><br>
  <span style="background:#ffee62;">&lt;%</span><span style="color:#008000;">-- We need this namespace to work with threads --</span><span style="background:#ffee62;">%&gt;</span><br>
  <span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Import</span> <span style="color:#ff0000;">Namespace</span><span style="color:#0000ff;">="System.Threading"</span> <span style="background:#ffee62;">%&gt;</span><br>
  <span style="color:#0000ff;">&lt;</span><span style="color:#a31515;">script</span> <span style="color:#ff0000;">runat</span><span style="color:#0000ff;">="server"&gt;</span>&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Protected</span> <span style="color:#0000ff;">Sub</span> Application_Start(<span style="color:#0000ff;">ByVal</span> sender <span style="color:#0000ff;">As</span> <span style="color:#0000ff;">Object</span>, <span style="color:#0000ff;">ByVal</span> e <span style="color:#0000ff;">As</span> System.EventArgs)<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' On application start, create an start separate thread</span><br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Dim</span> tsTask <span style="color:#0000ff;">As</span> ThreadStart = <span style="color:#0000ff;">New</span> ThreadStart(<span style="color:#0000ff;">AddressOf</span> TaskLoop)<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Dim</span> MyTask <span style="color:#0000ff;">As</span> Thread = <span style="color:#0000ff;">New</span> Thread(tsTask)<br>
  &nbsp;&nbsp;&nbsp;MyTask.Start()<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
  &nbsp;&nbsp;&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Shared</span> <span style="color:#0000ff;">Sub</span> TaskLoop()<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' In this example, task will repeat in infinite loop</span><br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' You can additional parameter if you want to have an option </span><br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' to stop the task from some page</span><br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">While</span> (<span style="color:#0000ff;">True</span>)<br>
  &nbsp;&nbsp;&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Execute scheduled task</span><br>
  &nbsp;&nbsp;&nbsp;ScheduledTask()<br>
  &nbsp;&nbsp;&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Wait for certain time interval</span><br>
  &nbsp;&nbsp;&nbsp;System.Threading.Thread.Sleep(TimeSpan.FromHours(12))<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">While</span><br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
  &nbsp;&nbsp;&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Shared</span> <span style="color:#0000ff;">Sub</span> ScheduledTask()<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Task code which is executed periodically</span><br>
  &nbsp;&nbsp;&nbsp;<br>
  &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
&nbsp;<span style="color:#0000ff;">&lt;/</span><span style="color:#a31515;">script</span><span style="color:#0000ff;">&gt;</span></p>
<h2>Scheduled tasks using timers</h2>
<script type="text/javascript"><!--
	e9 = new Object();
    e9.size = "336x280,300x250";
    e9.addBlockingCategories="Adult,Political,Flashing,Floating,Alcohol,Religious,Warning,Unicast,Suggestive,Audio,Full-page,Gambling,Tobacco,Pop-under,Violence,Pop-up";
//--></script>
<script type="text/javascript" src="Scheduled-Tasks-Timer_files/tags.js"></script>
<p>Very simple solution to perform scheduled tasks is by using timer. 
Again, we'll use Global.asax and Application_Start procedure. In 
Application_Start we'll create a Timer and use Elapsed event to execute 
task in regular time intervals. To make it so, write this code in 
Global.asax file:</p>
<p><b>[ C# ]</b></p>
<p><span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Application</span> <span style="color:#ff0000;">Language</span><span style="color:#0000ff;">="C#"</span> <span style="background:#ffee62;">%&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;</span><span style="color:#a31515;">script</span> <span style="color:#ff0000;">runat</span><span style="color:#0000ff;">="server"&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Code that runs on application startup</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">void</span> Application_Start(<span style="color:#0000ff;">object</span> sender, <span style="color:#2b91af; ">EventArgs</span> e) <br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Dynamically create new timer</span><br>
 &nbsp;&nbsp;&nbsp;System.Timers.<span style="color:#2b91af; ">Timer</span> timScheduledTask = <span style="color:#0000ff;">new</span> System.Timers.<span style="color:#2b91af; ">Timer</span>();<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Timer interval is set in miliseconds,</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// In this case, we'll run a task every minute</span><br>
 &nbsp;&nbsp;&nbsp;timScheduledTask.Interval = 60 * 1000;<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;timScheduledTask.Enabled = <span style="color:#0000ff;">true</span>;<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Add handler for Elapsed event</span><br>
 &nbsp;&nbsp;&nbsp;timScheduledTask.Elapsed += <br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">new</span> System.Timers.<span style="color:#2b91af; ">ElapsedEventHandler</span>(timScheduledTask_Elapsed);<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">void</span> timScheduledTask_Elapsed(<span style="color:#0000ff;">object</span> sender, System.Timers.<span style="color:#2b91af; ">ElapsedEventArgs</span> e)<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Execute some task</span><br>
 &nbsp;&nbsp;&nbsp;FirstTask();<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">void</span> FirstTask()<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Here is the code we need to execute periodically</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;/</span><span style="color:#a31515;">script</span><span style="color:#0000ff;">&gt;</span></p>
<p><b>[ VB.NET ]</b></p>
<p><span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Application</span> <span style="color:#ff0000;">Language</span><span style="color:#0000ff;">="VB"</span> <span style="background:#ffee62;">%&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;</span><span style="color:#a31515;">script</span> <span style="color:#ff0000;">runat</span><span style="color:#0000ff;">="server"&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Protected</span> <span style="color:#0000ff;">Sub</span> Application_Start(<span style="color:#0000ff;">ByVal</span> sender <span style="color:#0000ff;">As</span> <span style="color:#0000ff;">Object</span>, <span style="color:#0000ff;">ByVal</span> e <span style="color:#0000ff;">As</span> System.EventArgs)<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Dynamically create new timer</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Dim</span> timScheduledTask <span style="color:#0000ff;">As</span> System.Timers.Timer = <span style="color:#0000ff;">New</span> System.Timers.Timer()<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Timer interval is set in miliseconds,</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' In this case, we'll run a task every minute</span><br>
 &nbsp;&nbsp;&nbsp;timScheduledTask.Interval = 60 * 1000<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;timScheduledTask.Enabled = <span style="color:#0000ff;">True</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Add handler for Elapsed event</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">AddHandler</span> timScheduledTask.Elapsed, <span style="color:#0000ff;">AddressOf</span> timScheduledTask_ElapsedÂ&nbsp;Â&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Sub</span> timScheduledTask_Elapsed(<span style="color:#0000ff;">ByVal</span> sender <span style="color:#0000ff;">As</span> <span style="color:#0000ff;">Object</span>, <span style="color:#0000ff;">ByVal</span> e <span style="color:#0000ff;">As</span> System.Timers.ElapsedEventArgs)<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Execute some task</span><br>
 &nbsp;&nbsp;&nbsp;FirstTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Sub</span> FirstTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Here is the code we need to execute periodically</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;/</span><span style="color:#a31515;">script</span><span style="color:#0000ff;">&gt;</span></p>
<p>This solution looks very simple and neat, at least theoretically. In 
practice, timer is often unstable when used in web application. It is 
common that timer stops after 20-30 minutes, especially on shared 
hosting where hosting provider tries to save resources and recycle web 
application. 
</p><h2>Scheduled tasks using cache expiration as a trigger</h2>
<p>ASP.NET Cache expiration is one more method you can use to create 
scheduled tasks.  In this method, it is not important what you put in 
the cache. In this example I added short string "1", but could be 
anything. Useful for scheduled tasks is the fact that cache expires 
after specified time interval and then executes selected function 
(scheduled task).
</p><p>Here is example of Global.asax file that uses cache expiration to
 schedule tasks in ASP.NET application. First, Application_Start method 
calls ScheduleTask procedure  that uses cache expiration to schedule 
when task will be executed. In this example, cache willl expire after 
one hour. Then, after cache expired, SetTimer() is called. SetTimer 
function calls DoTask() method which represents code of scheduled task, 
and also calls again ScheduleTask() function to plan next task 
execution. 
</p><p><b>[ C# ]</b></p>
<p><span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Application</span> <span style="color:#ff0000;">Language</span><span style="color:#0000ff;">="C#"</span> <span style="background:#ffee62;">%&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;</span><span style="color:#a31515;">script</span> <span style="color:#ff0000;">runat</span><span style="color:#0000ff;">="server"&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">void</span> Application_Start(<span style="color:#0000ff;">object</span> sender, <span style="color:#2b91af; ">EventArgs</span> e) <br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Schedule task for the first time</span><br>
 &nbsp;&nbsp;&nbsp;ScheduleTask();<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">static</span> <span style="color:#0000ff;">void</span> ScheduleTask()<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#2b91af; ">HttpRuntime</span>.Cache.Add(<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// String that represents the name of the cache item,</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// could be any string</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#a31515;">"ScheduledTask"</span>, <br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Something to store in the cache</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#a31515;">"1"</span>, <br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// No cache dependencies</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">null</span>, <br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Will not use absolute cache expiration</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#2b91af; ">Cache</span>.NoAbsoluteExpiration, <br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Cache will expire after one hour</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// You can change this time interval according </span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// to your requriements</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#2b91af; ">TimeSpan</span>.FromHours(1),<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Cache will not be removed before expired</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#2b91af; ">CacheItemPriority</span>.NotRemovable, <br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// SetTimer function will be called when cache expire</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">new</span> <span style="color:#2b91af; ">CacheItemRemovedCallback</span>(SetTimer));<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// This function si called when cache is expired</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">static</span> <span style="color:#0000ff;">void</span> SetTimer(<span style="color:#0000ff;">string</span> key, <span style="color:#2b91af; ">Object</span> value, <span style="color:#2b91af; ">CacheItemRemovedReason</span> reason)<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Call the task function</span><br>
 &nbsp;&nbsp;&nbsp;DoTask();<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Schedule new execution time</span><br>
 &nbsp;&nbsp;&nbsp;ScheduleTask();<br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">static</span> <span style="color:#0000ff;">void</span> DoTask()<br>
 &nbsp;&nbsp;&nbsp;{<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// Task code which is executed periodically</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">// In this example, code will be executed every hour</span><br>
 &nbsp;&nbsp;&nbsp;}<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;/</span><span style="color:#a31515;">script</span><span style="color:#0000ff;">&gt;</span></p>
<p><b>[ VB.NET ]</b></p>
<p><span style="background:#ffee62;">&lt;%</span><span style="color:#0000ff;">@</span> <span style="color:#a31515;">Application</span> <span style="color:#ff0000;">Language</span><span style="color:#0000ff;">="VB"</span> <span style="background:#ffee62;">%&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;</span><span style="color:#a31515;">script</span> <span style="color:#ff0000;">runat</span><span style="color:#0000ff;">="server"&gt;</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Protected</span> <span style="color:#0000ff;">Sub</span> Application_Start(<span style="color:#0000ff;">ByVal</span> sender <span style="color:#0000ff;">As</span> <span style="color:#0000ff;">Object</span>, <span style="color:#0000ff;">ByVal</span> e <span style="color:#0000ff;">As</span> System.EventArgs)<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Schedule task for the first time</span><br>
 &nbsp;&nbsp;&nbsp;ScheduleTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Shared</span> <span style="color:#0000ff;">Sub</span> ScheduleTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Cache will expire after one hour</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' You can change this time interval according </span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' to your requriements</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' SetTimer function will be called when cache expire</span><br>
 &nbsp;&nbsp;&nbsp;HttpRuntime.Cache.Add( _<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#a31515;">"ScheduledTask"</span>, _<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#a31515;">"1"</span>, _<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Nothing</span>, _<br>
 &nbsp;&nbsp;&nbsp;Cache.NoAbsoluteExpiration, _<br>
 &nbsp;&nbsp;&nbsp;TimeSpan.FromHours(1), _<br>
 &nbsp;&nbsp;&nbsp;CacheItemPriority.NotRemovable, _<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">New</span> CacheItemRemovedCallback(<span style="color:#0000ff;">AddressOf</span> SetTimer))<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' This function si called when cache is expired</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Shared</span> <span style="color:#0000ff;">Sub</span> SetTimer(<span style="color:#0000ff;">ByVal</span> key <span style="color:#0000ff;">As</span> <span style="color:#0000ff;">String</span>, <span style="color:#0000ff;">ByVal</span> value <span style="color:#0000ff;">As</span> <span style="color:#0000ff;">Object</span>, <span style="color:#0000ff;">ByVal</span> reason <span style="color:#0000ff;">As</span> CacheItemRemovedReason)<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Call the task function</span><br>
 &nbsp;&nbsp;&nbsp;DoTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Schedule new execution time</span><br>
 &nbsp;&nbsp;&nbsp;ScheduleTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">Shared</span> <span style="color:#0000ff;">Sub</span> DoTask()<br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' Task code which is executed periodically</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#008000;">' In this example, code will be executed every hour</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">End</span> <span style="color:#0000ff;">Sub</span><br>
 &nbsp;&nbsp;&nbsp;<span style="color:#0000ff;">&lt;/</span><span style="color:#a31515;">script</span><span style="color:#0000ff;">&gt;</span></p>
<h2>Conclusion</h2>
<p>Scheduled task could be running of Windows application, script, web 
page, sending email etc. The problem with pure ASP.NET methods could be 
insufficient rights, since ASP.NET by default runs as NETWORK SERVICE or
 ASPNET account which are very limited.</p>
<p>Also, ASP.NET application could restart or even stop work because of 
numerous reasons. If ASP.NET application stops, scheduled tasks are not 
executed. If there is nobody on website (no web requests), server could 
stop application after short time. The possible workaround could be to 
keep web application alive using scheduled task that will use WebClient 
class to periodically (e.g. every ten minutes) make web requests to some
 page. </p>
<p>This doesn't help if ASP.NET application restarts. If task is time 
critical, consider more reliable options that use external application 
in <a href="http://www.beansoftware.com/ASP.NET-Tutorials/Task-Scheduler-Windows-Service.aspx">Task Scheduler or Windows service in ASP.NET</a> tutorial.</p>
<p>Using of external application is also recommended if you have long 
and heavy tasks that could hurt web application's performances. If 
visitors' experience will be bad because of some scheduled task, remove 
it from web application. In case that you are not able to use Windows 
service or Task Scheduler because your website is hosted on shared 
hosting, try to split long and heavy task into multiple short steps.</p>


<table border="0"><tbody><tr><td>
<script type="text/javascript"><!--
google_ad_client = "pub-9599772624225044";
/* 250x250 Bottom 09.09.30 */
google_ad_slot = "9166556124";
google_ad_width = 250;
google_ad_height = 250;
//-->
</script>
<script type="text/javascript" src="Scheduled-Tasks-Timer_files/show_ads.js">
</script></td></tr></tbody></table>   
<!-- google_ad_section_end -->          
<hr size="1">
<p style="color:blue;"><b>Tutorial toolbar:</b> &nbsp;<a href="mailto:?subject=Interesting%20tutorial%3A%20Enter%20Key%20in%20ASP.NET%20-%20Complete%20Research&amp;body=Hi%2C%20I%20found%20an%20interesting%20ASP.NET%20tutorial%3A%20Enter%20Key%20in%20ASP.NET%20-%20Complete%20Research%20on%20http%3A%2F%2Fwww.beansoftware.com%2FASP.NET-Tutorials%2FAccept-Enter-Key.aspx"><b>Tell A Friend</b></a> &nbsp;|&nbsp;&nbsp;<a href="javascript:addbookmark('Enter%20Key%20in%20ASP.NET%20-%20Complete%20Research',%20'http://www.beansoftware.com/ASP.NET-Tutorials/Accept-Enter-Key.aspx');"><b>Add to favorites</b></a><a href="mailto:?subject=Interesting%20tutorial%3A%20Enter%20Key%20in%20ASP.NET%20-%20Complete%20Research&amp;body=Hi%2C%20I%20found%20an%20interesting%20ASP.NET%20tutorial%3A%20Enter%20Key%20in%20ASP.NET%20-%20Complete%20Research%20on%20http%3A%2F%2Fwww.beansoftware.com%2FASP.NET-Tutorials%2FAccept-Enter-Key.aspx"></a>&nbsp; |&nbsp;&nbsp;<a href="mailto:info@beansoftware.com?Subject=Tutorial%20Feedback%3A%20Enter%20Key%20in%20ASP.NET%20-%20Complete%20Research"><b>Feedback</b></a></p>
<hr size="1">

<script type="text/javascript"><!--
google_ad_client = "pub-9599772624225044";
/* 468x15 Link 2009.09.30 */
google_ad_slot = "3167399240";
google_ad_width = 468;
google_ad_height = 15;
//-->
</script>
<script type="text/javascript" src="Scheduled-Tasks-Timer_files/show_ads.js">
</script>

</td>
<td id="rightCol" valign="top">
<iframe marginheight="0" marginwidth="0" src="Scheduled-Tasks-Timer_files/freelance-160x600.htm" frameborder="0" height="600" scrolling="no" width="160"></iframe>
<br>

<p><strong>Related articles:</strong><br><br>
1. <a href="http://www.beansoftware.com/ASP.NET-Tutorials/Task-Scheduler-Windows-Service.aspx">Using Task Scheduler or Windows Service For Scheduled Tasks</a><br>2. <a href="http://www.beansoftware.com/ASP.NET-Tutorials/Restart-Stop-Application.aspx">Restart and Stop of ASP.NET Application</a><br>
</p>   

</td></tr></tbody></table>
<div id="footer">
<div id="copydiv">Copyright ©  2002 - 2012 Bean Software. All rights reserved.<br>
</div>

</div>
<script src="Scheduled-Tasks-Timer_files/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-222049-1";
urchinTracker();
</script>

        



<div style="display: block; visibility: hidden; position: absolute; width: 356px; left: -10000px; top: -10000px; height: 68px;"><table dir="ltr" style="width: 356px; height: 68px;" frame="void" rules="none" class="gc-bubbleDefault pls-container" cellpadding="0" cellspacing="0"><tbody><tr class="gc-reset"><td class="pls-topLeft gc-reset"><img class="gc-reset" src="Scheduled-Tasks-Timer_files/border_3.gif" height="1" width="1"></td><td class="pls-topTail gc-reset"><img style="display: inline; left: 12px; top: 0px;" class="pls-tailbottom gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="9" width="15"><img style="display: none;" class="pls-spacerbottom gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="1" width="1"></td><td class="pls-topRight gc-reset"><img class="gc-reset" src="Scheduled-Tasks-Timer_files/border_3.gif" height="1" width="1"></td></tr><tr class="gc-reset"><td class="pls-vertShimLeft gc-reset"><img class="gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="4" width="1"></td><td class="pls-vertShim gc-reset"><img class="gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="4" width="1"></td><td class="pls-vertShimRight gc-reset"><img class="pls-dropTR gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="4" width="5"></td></tr><tr class="gc-reset"><td class="pls-contentLeft gc-reset"><img style="display: none;" class="pls-tailright gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="15" width="9"><img style="display: block;" class="pls-spacerright gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="1" width="1"></td><td class="pls-contentWrap gc-reset"><img style="visibility: hidden;" class="pls-spinner " src="Scheduled-Tasks-Timer_files/spinner-1.gif" height="16" width="16"><div class="goog-bubble-content gc-reset" style="width: 350px; height: 50px;"><iframe src="Scheduled-Tasks-Timer_files/hover.htm" name="I2_1354663110614" id="I2_1354663110614" vspace="0" tabindex="0" style="margin: 0px; position: absolute; z-index: 1; border-style: none; outline: medium none; width: 350px; height: 50px;" marginwidth="0" marginheight="0" hspace="0" frameborder="0" scrolling="no" width="100%"></iframe></div></td><td class="pls-dropRight gc-reset"><img style="display: none;" class="pls-tailleft gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="19" width="12"><img style="display: block;" class="pls-spacerleft gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="1" width="1"></td></tr><tr class="gc-reset"><td class="pls-bottomLeft gc-reset"><img class="gc-reset" src="Scheduled-Tasks-Timer_files/border_3.gif" height="1" width="1"></td><td class="gc-reset"><table style="width:100%" class="gc-reset" cellpadding="0" cellspacing="0"><tbody><tr class="gc-reset"><td class="pls-vert gc-reset"><img class="pls-dropBL gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="5" width="4"></td><td class="pls-dropBottom gc-reset"><img style="display: none;" class="pls-tailtop gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="13" width="19"><img style="display: block;" class="pls-spacertop gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="1" width="1"></td></tr></tbody></table></td><td class="pls-vert gc-reset"><img class="pls-dropBR gc-reset" src="Scheduled-Tasks-Timer_files/spacer.gif" height="5" width="5"></td></tr></tbody></table></div><ins style="position: absolute; background: none repeat scroll 0% 0% transparent; left: 349px; top: 217.067px; width: 38px; height: 24px; z-index: -10000;"></ins></body></html>