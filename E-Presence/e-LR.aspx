<%@ Page Language="C#" MasterPageFile="~/Students.master" AutoEventWireup="true" CodeFile="e-LR.aspx.cs" Inherits="e_LR" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
     </asp:ScriptManager>

<div id="timer" style="height:30px; float:right; padding:3px" >
Time:<asp:Label ID="lblTimer" runat="server" ></asp:Label>
<%--<asp:TextBox style="display:none" ID="tbTimer" runat="server"></asp:TextBox>
--%><asp:Button ID="hdnBtnTimeOut" OnClick="ExamTimeOut" runat="server" style="display:none" />
    <asp:TextBox ID="tbTimer" runat="server" style= "display:none"></asp:TextBox>
    <asp:Button ID="btnproceed" runat="server" Text="Proceed" />
    <asp:Button ID="btnnext" runat="server" Text="Next" />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
           <ContentTemplate>
               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           </ContentTemplate>
               <Triggers>
 
                   <asp:AsyncPostBackTrigger ControlID="tbTimer" EventName="Text" />
 
               </Triggers>
     </asp:UpdatePanel>

</div>
<script type="text/javascript" language="javascript">
var Timer;
var TotalSeconds;
function CreateTimer(TimerID, Time) {
        Timer = document.getElementById(TimerID);
        TotalSeconds = Time;     
        UpdateTimer()
        window.setTimeout("Tick()", 1000);
}
function Tick() {
        if (TotalSeconds <= 0) {
            alert("Time's up!")
            document.getElementById('<%=hdnBtnTimeOut.ClientID %>').click();
                return;
        }
        TotalSeconds -= 1;
        UpdateTimer();
        window.setTimeout("Tick()", 1000);
}
function UpdateTimer() {
        var Seconds = TotalSeconds;    
        var Days = Math.floor(Seconds / 86400);
        Seconds -= Days * 86400;
        var Hours = Math.floor(Seconds / 3600);
        Seconds -= Hours * (3600);
        var Minutes = Math.floor(Seconds / 60);
        Seconds -= Minutes * (60);
        var TimeStr = ((Days > 0) ? Days + " days " : "") + LeadingZero(Hours) + ":" + LeadingZero(Minutes) + ":" + LeadingZero(Seconds)
        Timer.innerHTML = TimeStr;
        document.getElementById('<%=tbTimer.ClientID %>').value = TimeStr;
}
function LeadingZero(Time) {
        return (Time < 10) ? "0" + Time : + Time;
}
</script>

</asp:Content>

